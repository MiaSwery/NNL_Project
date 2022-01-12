import tkinter as tk
from tkinter import messagebox, Label , PhotoImage
from PIL import Image, ImageTk
import json
import glob
import os
import csv
from shapely.geometry import Polygon

first_coords = None
second_coords = None

boxes = {} # Dictionnary to stock the information of every box
           # {rect id : [first_coords,second_coords,height,width,area,Category, Image Number, rect_id]} 

rect_id = 0 # Number of the current selected rectangle

current_image_number = 0 # Number of the current image

list_category = ["No Category"] # List of categories

#############################
###    CLICK FUNCTIONS    ###
#############################

# Function to handle a simple click
def click(event):
    global first_coords
    first_coords = (event.x, event.y)

# Function to handle a released click
def release_click(event):
    global first_coords, second_coords, boxes, rect_id, current_image_number

    second_coords = (event.x, event.y)
    if(first_coords!=second_coords):
        height = abs(first_coords[1]- second_coords[1])
        width = abs(first_coords[0] - second_coords[0])
        area  = height*width
        if (area>40) and (width>5) and (height>5) :
            new_box = [first_coords,second_coords,height,width,area,"No Category",current_image_number, rect_id] 

            if(total_intersection(new_box)):
                messagebox.showinfo("Information","The box you selected will not be saved because it is included in another box or a box is included in your selection.")

            else:
                rect_id = canvas.create_rectangle(first_coords[0], first_coords[1], second_coords[0], second_coords[1],
                                      dash=(2,2), fill='', outline='red')
                canvas.coords(rect_id, first_coords[0], first_coords[1], second_coords[0], second_coords[1])
                boxes[rect_id]= new_box # we add a box in our dictionnary
                crop_image(rect_id)
                info_box(rect_id)

        else:
            messagebox.showinfo("Information","Be careful ! The box you are drawing is too small. Hence, it will not be saved.")

    check_intersections()

# Function to handle a double click
def double_click(event):
    global boxes, rect_id, current_image_number

    first_coords = (event.x, event.y)
    
    for key,value in boxes.items():
        x1 , y1 = value[0]
        x2 , y2 = value[1]
       
        if((((min(x1,x2)<=first_coords[0])
            and(first_coords[0]<=max(x1,x2)))
            and((min(y1,y2)<=first_coords[1])
            and(first_coords[1]<=max(y1,y2))))
            and(value[6]==current_image_number)):  # ie if we are inside a box
                
                rect_id = key
                info_box(key)

# Function to create a popup to tell information about a box created. 
def info_box(rect_id):
   global boxes
   coords1 = boxes[rect_id][0]
   coords2 = boxes[rect_id][1]
   height = boxes[rect_id][2]
   width =  boxes[rect_id][3]
   area = boxes[rect_id][4]


   coord = coords(coords1,coords2)

   # String for the message of each point : 
   info_top_left = "Point at top left       :  (" + str(coord[0][0]) + "," + str(coord[0][1]) + ")\n"
   info_top_right = "Point at top right      :  (" + str(coord[1][0]) + "," + str(coord[1][1]) + ")\n"
   info_bot_left = "Point at bottom left    :  (" + str(coord[2][0]) + "," + str(coord[2][1]) + ")\n"
   info_bot_right = "Point at bottom right   :  (" + str(coord[3][0]) + "," + str(coord[3][1]) + ")\n"
   
   # String for the sizes
   info_height = "Height                  :  " + str(height) + " \n"
   info_width = "Width                   :  " +  str(width) + " \n"
   info_area = "Area                    :  " + str(area) + " \n"

   info_points = info_top_left + info_top_right + info_bot_left + info_bot_right
   info_size = info_height + info_width + info_area
   info_category = "Category                :  " + boxes[rect_id][5]

   message = "          You selected a box with the following information : \n\n" + info_points + info_size + info_category

   # Popup window : 
   popup= tk.Toplevel(root)
   popup.geometry("800x500")
   popup.title("Information : Box")

   # Text on the window : 
   text = tk.Text(popup, height = 10, width = 70)
   text.insert(tk.END, message)
   text.config(state= tk.DISABLED)
   text.pack()

   # Button to quit the popup window : 
   exit_button = tk.Button(popup, text="OK", command=popup.destroy)
   exit_button.pack(pady=5 , side=tk.BOTTOM)

   # Button to select the category :
   selection_button = tk.Button(popup, text = "Select a category",command=lambda:[popup.destroy(),category_selection()])
   selection_button.pack(pady=5, side = tk.BOTTOM)



##################################
###      IMAGE FUNCTIONS       ###
##################################

def crop_image(rect_id):
    global current_image_number, images
    coord1 = boxes[rect_id][0] # top left
    coord2 = boxes[rect_id][1] # top right
    height = boxes[rect_id][2]
    width =  boxes[rect_id][3]

    x1 = coord1[0]  
    y1 = coord1[1]  
    x2 = coord2[0]  
    y2 = coord2[1]  

    left = min(x1,x2)
    top = min(y1,y2)

    new_image = (images[current_image_number]).crop((left,top,left + width, top + height))
    name_initial_picture = os.path.splitext(os.path.basename(list_path[current_image_number]))[0]
    new_name_picture = name_initial_picture + "-bb-" + str(coord1[0]) +"x" + str(coord1[1]) +"-" + str(width) + "-" + str(height)

    new_image = new_image.resize((180,180))

    try : 
        new_image.save("../img/annotated_images/" + new_name_picture +".png")
    except :
        directory = "annotated_images"
        parent_directory = "../img/"
        path = os.path.join(parent_directory, directory)
        os.mkdir(path)
        new_image.save("../img/annotated_images/" + new_name_picture +".png")



def coords(c1, c2): 
    x1 = c1[0]
    y1 = c1[1]
    x2 = c2[0]
    y2 = c2[1]

    #      [      top left,                top right,              bottom left,              bottom right       ]
    return [(min(x1,x2),min(y1,y2)), (max(x1,x2),min(y1,y2)) , (min(x1,x2),max(y1,y2)) , (max(x1,x2),max(y1,y2))]




##################################
###    CATEGORIES FUNCTIONS    ###
##################################

# Function to create a window to select the category of the current box
def category_selection():
    global selection, variable, menu, entry, list_category, rect_id, replace_category_NEW_entry, replace_category_OLD_entry, delete_category_entry

    # Window to select a category
    selection = tk.Toplevel(root)
    selection.geometry("800x400")
    selection.title("Category selection")

    variable = tk.StringVar(selection)
    variable.set("Select a category") # default value

    # The menu of category 
    menu = tk.OptionMenu(selection, variable, *list_category, command=update_category)
    menu.pack()


    # Button to import categories from a json or csv file
    import_category_button = tk.Button(selection,text="Import categories", command=import_category)
    import_category_button.place(x=575, y=0)

    # Button to delete a category
    delete_category_button = tk.Button(selection,text="Delete a category", command= lambda:[replace_category("No Category", delete_category_entry.get()),selection.destroy(),category_selection()])
    delete_category_button.pack(pady=5, side=tk.BOTTOM)
    delete_category_entry = tk.Entry(selection, width = 50)
    delete_category_entry.focus_set()
    delete_category_entry.insert(0, 'Enter the name of the category to delete')
    delete_category_entry.bind('<FocusIn>', on_entry_click_DeleteCategory)
    delete_category_entry.bind('<FocusOut>', on_focusout_DeleteCategory)
    delete_category_entry.config(fg = 'grey')
    delete_category_entry.pack(pady=5,side=tk.BOTTOM)
    

    # Button to replace a category
    replace_category_button = tk.Button(selection,text="Replace a category", command= lambda:[replace_category(replace_category_NEW_entry.get(), replace_category_OLD_entry.get()),selection.destroy(),category_selection()])

    replace_category_NEW_entry = tk.Entry(selection, width = 50)
    replace_category_button.pack(pady=5,side=tk.BOTTOM)
    replace_category_NEW_entry.focus_set()
    replace_category_NEW_entry.insert(0, 'Enter the new name of the category you want to change')
    replace_category_NEW_entry.bind('<FocusIn>', on_entry_click_ReplaceCategory_NEW)
    replace_category_NEW_entry.bind('<FocusOut>', on_focusout_ReplaceCategory_NEW)
    replace_category_NEW_entry.config(fg = 'grey')
    replace_category_NEW_entry.pack(pady=5,side=tk.BOTTOM)

    replace_category_OLD_entry = tk.Entry(selection, width = 50)
    replace_category_OLD_entry.focus_set()
    replace_category_OLD_entry.insert(0, 'Enter the name of the category to be replaced')
    replace_category_OLD_entry.bind('<FocusIn>', on_entry_click_ReplaceCategory_OLD)
    replace_category_OLD_entry.bind('<FocusOut>', on_focusout_ReplaceCategory_OLD)
    replace_category_OLD_entry.config(fg = 'grey')
    replace_category_OLD_entry.pack(pady=5,side=tk.BOTTOM)


    # Allow the user to type a string
    entry = tk.Entry(selection, width = 50)

    # Button to add a category
    category_button = tk.Button(selection,text="Add a new category",command=lambda:[new_category(),selection.destroy(),category_selection()])
    category_button.pack(pady=5,side=tk.BOTTOM)

    entry.focus_set()
    entry.insert(0, 'Enter the name of the new category')
    entry.bind('<FocusIn>', on_entry_click_AddCategory)
    entry.bind('<FocusOut>', on_focusout_AddCategory)
    entry.config(fg = 'grey')
    entry.pack(pady=5,side=tk.BOTTOM)

    # Button to quit the window : 
    exit_button = tk.Button(selection, text="Confirm the category selected", command=lambda:[selection.destroy(),info_box(rect_id)])
    exit_button.pack(pady=5)



# Function to update the category of the current box
def update_category(choice):
    global boxes, rect_id

    #update of the category :
    info = boxes[rect_id]
    info[5] = choice
    boxes[rect_id] = info

    #print(boxes)


# Function to add a new category
def new_category():
    global entry , list_category
    input = entry.get() 
    if((input not in list_category)and(len(input.strip()))and(input!='Enter the name of the new category')):
        list_category.append(input)
        json_object = json.dumps({'categories': list_category}, indent = 4)
        with open("categories.json", "w") as outfile:
            outfile.write(json_object)

        messagebox.showinfo("Information", "You added the following category : " + input)


# Function to replace a category
def replace_category(str1, str2):
    global  list_category
    new = str1 
    old = str2

    if(new!='Enter the new name of the category you want to change'):
        if (old in list_category):
           
                #categories.json
                myJsonFile = open("categories.json")

                list_category = json.load(myJsonFile)["categories"]
                
                if (new not in list_category) :
                    for i in range(len(list_category)) :
                        if  list_category[i] == old :
                            list_category[i] = new
                else :
                    list_category.remove(old)
                
                json_object = json.dumps({'categories': list_category}, indent = 4)
                with open("categories.json", "w") as outfile:
                    outfile.write(json_object)
                
                #modify the boxes
                for b, box  in boxes.items() :
                    if box[5] == old :
                        box[5] = new

                #rewrite the json
                generate_json()

        else :
            if (str1 == "No Category") : 
                messagebox.showinfo("Error", "You tried to delete a category that doesn't exist.")
            else :
                messagebox.showinfo("Error", "You tried to replace a category that doesn't exist.")



# Function to update the image when we decide to go to the next image
def update_image():
    global current_image_number, rect_id, button1, button2,canvas

    for key,value in boxes.items(): # Removing the draw of the boxes of the previous image
        if(value[6]==current_image_number):
            canvas.delete(key)

    # next image
    current_image_number += 1

    if(current_image_number<len(list_path)): #If we still have images to annotate.
        # change image on canvas
        new_image = images_resized[current_image_number]
        canvas.config(width=new_image.width(), height=new_image.height())
        canvas.itemconfig(image_id, image=new_image)

    else: # If there are no more images to annotate.
        canvas.delete("all")
        #generate_json()

        messagebox.showinfo("Information", "You annoted every images.")

        button1.destroy()
        button2.destroy()
        canvas.destroy()
    generate_json()

#Function to pop-up a Help window
def help():
    messagebox.showinfo("HELP", "You can create a box by first clicking one end of the area you want to annotate and release it at another end.\nTo see information about a box you created, please double click on it.\nThanks for using our program, we hope you will have a pleasant experience ;-)")


# Function to handle the windows to import a category
def import_category():
    global selection, entry_import_cat
    import_cat = tk.Toplevel(selection)
    import_cat.geometry("700x200")
    import_cat.title("Import categories")

    txt = tk.Text(import_cat, height = 2, width = 100)
    msg = "Please enter the path of the file containing the categories name"
    txt.insert('end', msg +'\n')
    txt.config(state= tk.DISABLED)
    txt.tag_configure("msg", justify='center')
    txt.pack(pady=5,side=tk.TOP)

    entry_import_cat = tk.Entry(import_cat, width = 50)
    entry_import_cat.focus_set()
    entry_import_cat.pack(pady=5,side=tk.TOP)

    validate_button = tk.Button(import_cat,text="Validate", command = lambda:[validate_path(), selection.destroy(), category_selection()])
    validate_button.pack(pady=5,side=tk.BOTTOM)

# Function to import categories from a list (it is used after reading a json or a csv file)
def import_categories_from_list(list_new_categories):
    global list_category
    myJsonFile = open("categories.json")
    list_category = json.load(myJsonFile)["categories"]

    if ("No Category" not in list_category) :
        list_category.append("No Category")

    for c in list_new_categories:
        if c not in list_category :
            list_category.append(c)
            
    json_object = json.dumps({'categories': list_category}, indent = 4)
    with open("categories.json", "w") as outfile:
        outfile.write(json_object)
            
    myJsonFile.close()

# Function to import categories from a file corresponding to a path
def validate_path():
    global entry_import_cat, list_category
    
    try :
        filepath = entry_import_cat.get()
        if filepath.endswith(".json") :
            f = open(filepath)

            data = json.load(f)
            import_categories_from_list(data["categories"])           
            
            f.close()

            messagebox.showinfo("Successful Retrieval","The categories have been successfully added from the file you mentioned in the path.")

        elif filepath.endswith(".csv") :
            categories_from_csv = []
            with open(filepath) as csv_file:
                reader = csv.reader(csv_file, delimiter=',')
                for row in reader:
                    for i in row:
                        if(i!=''):
                            categories_from_csv.append(i)


            import_categories_from_list(categories_from_csv)           

            messagebox.showinfo("Successful Retrieval","The categories have been successfully added from the file you mentioned in the path.")


        else :
            messagebox.showinfo("Unsuccessful Retrieval","The file is not a json or a csv one. Hence, we cannot extract the categories from it. Please make sure to use a json or a csv file.")
      

    except :    
        messagebox.showinfo("Unsuccessful Retrieval","The file has not been found or isn't well written. Please make sure the path exists and the extension is .json or .csv.")


##################################
###  FUNCTIONS FOR THE ENTRIES ###   
##################################

def on_entry_click_AddCategory(event):
    global entry
    function_entry_click(entry, 'Enter the name of the new category')

def on_entry_click_ReplaceCategory_NEW(event):
    global replace_category_NEW_entry
    function_entry_click(replace_category_NEW_entry, 'Enter the new name of the category you want to change')

def on_entry_click_ReplaceCategory_OLD(event):
    global replace_category_OLD_entry
    function_entry_click(replace_category_OLD_entry, 'Enter the name of the category to be replaced')

def on_entry_click_DeleteCategory(event):
    global delete_category_entry
    function_entry_click(delete_category_entry, 'Enter the name of the category to delete')

def on_focusout_AddCategory(event):
    global entry
    function_focusout(entry, 'Enter the name of the new category')

def on_focusout_ReplaceCategory_NEW(event):
    global replace_category_NEW_entry
    function_focusout(replace_category_NEW_entry, 'Enter the new name of the category you want to change')

def on_focusout_ReplaceCategory_OLD(event):
    global replace_category_OLD_entry
    function_focusout(replace_category_OLD_entry, 'Enter the name of the category to be replaced')

def on_focusout_DeleteCategory(event):
    global delete_category_entry
    function_focusout(delete_category_entry, 'Enter the name of the category to delete')


def function_entry_click(text_entry, text):
    if text_entry.get() == text:
       text_entry.delete(0, "end") # delete all the text in the entry
       text_entry.insert(0, '') #Insert blank for user input
       text_entry.config(fg = 'black')

def function_focusout(text_entry, text):
    if text_entry.get() == '':
        text_entry.insert(0, text)
        text_entry.config(fg = 'grey')

############################
#### INTERSECTION IMAGES ###
############################

# Function to know if two boxes intersect
def intersects(box1,box2):
    global coords1_box1, coords2_box1, coords1_box2, coords2_box2

    coords1_box1 = box1[0]
    coords2_box1 = box1[1]

    coords1_box2 = box2[0]
    coords2_box2 = box2[1]


    coords_box1 = coords(coords1_box1,coords2_box1)
    coords_box2 = coords(coords1_box2,coords2_box2)

    p1 = Polygon([coords_box1[0], coords_box1[1],coords_box1[3],coords_box1[2]])
    p2 = Polygon([coords_box2[0], coords_box2[1],coords_box2[3],coords_box2[2]])
    
    return p1.intersects(p2)

# Function to know the percentage of the intersection between two boxes
def percetage_intersection(box1,box2):
    global coords1_box1, coords2_box1, coords1_box2, coords2_box2

    coords1_box1 = box1[0]
    coords2_box1 = box1[1]

    coords1_box2 = box2[0]
    coords2_box2 = box2[1]

    coords_box1 = coords(coords1_box1,coords2_box1)
    coords_box2 = coords(coords1_box2,coords2_box2)

    p1 = Polygon([coords_box1[0], coords_box1[1],coords_box1[3],coords_box1[2]])
    p2 = Polygon([coords_box2[0], coords_box2[1],coords_box2[3],coords_box2[2]])

    return (p1.intersection(p2).area / p1.area) * 100


# Function to know what is the total percentage of the intersection of a box with the others
def sum_percentage(box):
    global boxes


    nb_image = box[6]
    nb_rect = box[7]
    res = 0


    for key,value in boxes.items():
        if((value[6]==nb_image) and (value[7]!=nb_rect)):
            res = res + percetage_intersection(box,value)

    return res

# Function to know if a box is strictly included in another or if a box is strictly included in this box
def total_intersection(box):
    global boxes

    nb_image = box[6]
    nb_rect = box[7]

    for key,value in boxes.items():
        if((value[6]==nb_image) and (value[7]!=nb_rect)):
            if((percetage_intersection(box,value)==100.0)or (percetage_intersection(value,box)==100.0)):
                return True

    return False

# Function to check if there is an intersection > 20% of the area
def check_intersections():
    global boxes, current_image_number,canvas
    for b,value in boxes.copy().items():
        if((value[6]==current_image_number)and(sum_percentage(value)>20.0)):
            canvas.delete(b)
            del boxes[b]
            messagebox.showinfo("Information","A box has been discarded because its total intersection with the other boxes > 20%")


########################
###  GENERATION JSON ###   
########################

# Function to get all the boxes of an image and convert them into a dictionnary 
def convert_image_to_json(path,id):
    global boxes

    data_image = []
    for key,value in boxes.items():
        if(value[6]==id):
            data_image.append(convert_box_to_json(value[0],value[1],value[2],value[3],value[4],value[5], value[7]))
    if(data_image == []):
        return "null"

    else:
        return data_image
            
        
# Function to convert the information of a single box into a dictionnary
def convert_box_to_json(co1,co2,height,width,area,category, rect_id):
    global boxes

    coord = coords(co1,co2)

    return {'point top left' : coord[0],
            'point top right' : coord[1],
            'point bottom left' : coord[2],
            'point bottom right' : coord[3],
            'height' : height, 
            'width' : width, 
            'area' : area, 
            'category' : category, 
            'path' : "../img/annotated_images/image" + str(rect_id) + ".png"}

# Function to generate the whole json
def generate_json():
    global list_path
    # Data to be written
    data_json = []

    for i in range(len(list_path)):
        data_json.append({'image':{'path' : list_path[i], 'boxes' : convert_image_to_json(list_path[i],i)}})
      
    # Serializing json 
    json_object = json.dumps({'data': data_json}, indent = 4)
      
    # Writing to sample.json
    with open("annotations.json", "w") as outfile:
        outfile.write(json_object)     


# Function to generate the initial category json
def generate_category_json():      
    # Serializing json 
    json_object = json.dumps({'categories': []}, indent = 4)
      
    # Writing to sample.json
    with open("categories.json", "w") as outfile:
        outfile.write(json_object)  



#########################
###    MAIN WINDOW    ###
#########################
root = tk.Tk()
root.wm_title("Image Annotator")
root.geometry("1000x1000")
root.configure(background='#fbd014')



# Function called after pressing the button "Start"
def start_app():
    global image_id, canvas, images_resized , list_path, button1, button2, images, mario, button_start, welcome_message
    button_start.destroy()
    welcome_message.destroy()
    mario.destroy()
    root.configure(background='pink')
    generate_category_json()

    # Deleting the previous annotated images 
    annotated = glob.glob('../img/annotated_images/*')
    for f in annotated:
        os.remove(f)

    list_path = glob.glob("../img/resized/with_mask/*png") + glob.glob("../img/resized/without_mask/*png")  # All the paths
    images = [Image.open(i) for i in  list_path] #All the images
    images_resized = [ImageTk.PhotoImage(i) for i in images] 


    img = ImageTk.PhotoImage(images[0])

    canvas= tk.Canvas(root, width=img.width(), height=img.height(),
                       borderwidth=0, highlightthickness=0)
    canvas.configure(background = "pink")


    image_id = canvas.create_image(0, 0, anchor='nw', image=images_resized[current_image_number])


    canvas.bind("<Button-1>", click)
    canvas.bind("<ButtonRelease-1>", release_click)
    canvas.bind("<Double-1>", double_click)

    canvas.pack(expand=True)


    #########################
    ###      BUTTONS      ###
    #########################
    button1 = tk.Button(root, text="NEXT PICTURE\n-->", bg='#9aeeeb',command=update_image)
    button1.pack(pady=5,side=tk.RIGHT)

    button2 = tk.Button(root, text="HELP ME !", bg='#9aeeeb',command=help)
    button2.pack(pady=5,side=tk.TOP)


# Display Buttons
button_start = tk.Button(root, text="HERE WE GO !", fg='white', bg='#6000e4',command=start_app)
button_start.pack(pady=5,side=tk.TOP)


#Add image file
bg = ImageTk.PhotoImage(file = "mario_resized.png")
mario = tk.Canvas( root, width = bg.width(), height = bg.height())
mario.configure(background='#fbd014')
mario.pack(expand = True)
# Display image
mario.create_image( 0, 0, image = bg,
                     anchor = "nw")

welcome = "Welcome!"
welcome_message = tk.Text(root, height = 5, width = 300)
welcome_message.insert('end', welcome+'\n')
welcome_message.tag_add('welcome','1.0','1.end')
welcome_message.tag_config('welcome', font='Helvetica 20 bold')
welcome_message.tag_configure("welcome", justify='center')
welcome_message.tag_configure("welcome", foreground="#6000e4")


#welcome_message.configure(background='pink')
welcome_message.config(state= tk.DISABLED)
welcome_message.pack(side = tk.BOTTOM)
welcome_message.configure(background='#fbd014')

# show window
root.mainloop()


