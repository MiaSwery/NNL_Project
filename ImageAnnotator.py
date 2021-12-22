import tkinter as tk
from tkinter import messagebox
from tkinter import Label
from PIL import Image, ImageTk
import json
import glob
import os

first_coords = None
second_coords = None

boxes = {} # Dictionnary to stock the information of every box

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
            rect_id = canvas.create_rectangle(first_coords[0], first_coords[1], second_coords[0], second_coords[1],
                                      dash=(2,2), fill='', outline='red')
            canvas.coords(rect_id, first_coords[0], first_coords[1], second_coords[0], second_coords[1])
            boxes[rect_id]= [first_coords,second_coords,height,width,area,"No Category",current_image_number, rect_id] # we add a box in our dictionnary
            crop_image(rect_id)
            info_box(rect_id)
        else:
            messagebox.showinfo("Information","Be careful ! The box you are drawing is too small. Hence, it will not be saved.")


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


   coord = coords(rect_id)

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

   #Label(popup, text= message).place(x=20,y=20)

   # Button to quit the popup window : 
   exit_button = tk.Button(popup, text="OK", command=popup.destroy)
   exit_button.pack(pady=5 , side=tk.BOTTOM)

   # Button to select the category :
   selection_button = tk.Button(popup, text = "Select a category",command=lambda:[popup.destroy(),category_selection()])
   selection_button.pack(pady=5, side = tk.BOTTOM)



##################################
###    IMAGE FUNCTIONS    ###
##################################

def crop_image(rect_id):
    global current_image_number, images, first_coords, second_coords
    coord1 = boxes[rect_id][0] 
    coord2 = boxes[rect_id][1] 
    height = boxes[rect_id][2]
    width =  boxes[rect_id][3]
    x1 = coord1[0]
    y1 = coord1[1]
    x2 = coord2[0]
    y2 = coord2[1]
    left = min(x1,x2)
    right = max(x1,x2)
    bottom = min(y1,y2)
    top = min(y1,y2)
    h = x1 - x2 
    w = y1 - y2

    new_image = (images[current_image_number]).crop((left,top,left + width, top + height))

    try : 
        new_image.save("dataset/annotated_images/image" + str(rect_id) +".png")
    except :
        directory = "annotated_images"
        parent_directory = "dataset/"
        path = os.path.join(parent_directory, directory)
        os.mkdir(path)
        new_image.save("dataset/annotated_images/image" + str(rect_id) +".png")



def coords(rect_id): 
    global boxes
    coord1 = boxes[rect_id][0] 
    coord2 = boxes[rect_id][1] 
    x1 = coord1[0]
    y1 = coord1[1]
    x2 = coord2[0]
    y2 = coord2[1]

    #      [      top left,                top right,              bottom left,              bottom right       ]
    return [(min(x1,x2),max(y1,y2)), (max(x1,x2),max(y1,y2)) , (min(x1,x2),min(y1,y2)) , (max(x1,x2),min(y1,y2))]




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
    #import_category_button.pack(pady=5,side=tk.TOP)
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
        generate_json()

        messagebox.showinfo("Information", "You annoted every images.\nThe json file has been generated.")

        button1.destroy()
        button2.destroy()
        canvas.destroy()

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

def validate_path():
    global entry_import_cat, list_category
    
    try :
        filepath =entry_import_cat.get()
        f = open(filepath)
        if filepath.endswith(".json") :
                        
            data = json.load(f)
            
            myJsonFile = open("categories.json")
            list_category = json.load(myJsonFile)["categories"]

            if ("No Category" not in list_category) :
                list_category.append("No Category")

            for c in data['categories'] :
                if c not in list_category :
                    list_category.append(c)
            
            json_object = json.dumps({'categories': list_category}, indent = 4)
            with open("categories.json", "w") as outfile:
                outfile.write(json_object)
            
            myJsonFile.close()
            
            f.close()

            messagebox.showinfo("Successful Retrieval","The categories have been successfully added from the file you mentioned in the path.")

        elif filepath.endswith(".csv") :
            print("okay csv")
        else :
            messagebox.showinfo("Unsuccessful Retrieval","The file is not a json or a csv one. Hence, we cannot extract the categories from it. Please make sure to use a json or a csv file.")

        #data = json.load(f)
        
    except :    
        messagebox.showinfo("Unsuccessful Retrieval","The file has not been found. Please make sure the path exists and the extension is .json or .csv.")


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

########################
###  GENERATION JSON ###   
########################

# Function to get all the boxes of an image and convert them into a dictionnary 
def convert_image_to_json(path,id):
    global boxes

    data_image = []
    for key,value in boxes.items():
        if(value[6]==id):
            data_image.append(convert_box_to_json(value[2],value[3],value[4],value[5], value[7]))
    if(data_image == []):
        return "null"

    else:
        return data_image
            
        
# Function to convert the information of a single box into a dictionnary
def convert_box_to_json(height,width,area,category, rect_id):
    # Rajouter les coordonnées des points ??? 
    return {'height' : height, 'width' : width, 'area' : area, 'category' : category, 'path' : "dataset/annotated_images/image" + str(rect_id) + ".png"}

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
root.configure(background='pink')


welcome = "Welcome\n"
msg = 'Press the button "Start" when you are ready to annotate the images. \n\n' 
msg = msg + 'Note : After pressing the button "Start", the images might take a few seconds to be generated. \n\n'
msg = msg + 'A revoir'

welcome_message = tk.Text(root, height = 35, width = 300)
welcome_message.insert('end', welcome+'\n')
welcome_message.insert('end', msg+'\n')

welcome_message.tag_add('welcome','1.0','1.end')
welcome_message.tag_config('welcome', font='comic 20 bold')  
welcome_message.tag_configure("welcome", justify='center')


welcome_message.tag_add('msg','2.0','2.end')
welcome_message.tag_config('msg', font='arial 13 normal')

#welcome_message.configure(background='pink')
welcome_message.config(state= tk.DISABLED)
welcome_message.pack()
welcome_message.configure(background='pink')



# Function called after pressing the button "Start"
def start_app():
    global image_id, canvas, images_resized ,   list_path, button1, button2, images
    button_start.destroy()
    generate_category_json()

    img = ImageTk.PhotoImage(Image.open("dataset/with_mask/image_0.png"))

    canvas= tk.Canvas(root, width=img.width(), height=img.height(),
                       borderwidth=0, highlightthickness=0)
    #canvas.configure(background = "pink")



    #print("Generation of the images ...")
    #print("It might take a few seconds.")

    list_path = glob.glob("dataset/with_mask/*jpg") + glob.glob("dataset/without_mask/*jpg") + glob.glob("dataset/with_mask/*png") + glob.glob("dataset/without_mask/*png")  # All the paths
    #list_path = list_path[0:7] 
    images = [Image.open(i) for i in    list_path] #All the images

    for i in range(len(images)):
        ig = images[i]
        width_ig, height_ig = ig.size

        if(width_ig > 500 or height_ig >500): # ie if an image is too big ==> We need to resize it.
            scale = max(width_ig,height_ig)/500
            height_ig = int(height_ig / scale)
            width_ig = int(width_ig / scale)
            images[i] = ig.resize((width_ig,height_ig))

    images_resized = [ImageTk.PhotoImage(i) for i in images] #All the resized images

    #print("All the images have been generated.")

    image_id = canvas.create_image(0, 0, anchor='nw', image=images_resized[current_image_number])


    canvas.bind("<Button-1>", click)
    canvas.bind("<ButtonRelease-1>", release_click)
    canvas.bind("<Double-1>", double_click)

    canvas.pack(expand=True)



    #########################
    ###      BUTTONS      ###
    #########################
    button1 = tk.Button(root, text="NEXT PICTURE\n-->", bg='white',command=update_image)
    button1.pack(pady=5,side=tk.RIGHT)

    button2 = tk.Button(root, text="SAVE", bg='white')
    button2.pack(pady=5,side=tk.BOTTOM)



button_start = tk.Button(root, text="START", bg='white',command=lambda:[welcome_message.destroy(), start_app()])
button_start.pack(pady=5,side=tk.BOTTOM)

# show window
root.mainloop()
