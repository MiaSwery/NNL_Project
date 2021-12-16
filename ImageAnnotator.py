import tkinter as tk
from tkinter import messagebox
from tkinter import Label
from PIL import Image, ImageTk
import json
import glob

first_coords = None
second_coords = None

boxes = {} # Dictionnary to stock the information of every box

rect_id = 0 # Number of the current selected rectangle

current_image_number = 0 # Number of the current image

list_category = ["Category 1", "Category 2", "Category 3"] # List of categories


# Function to handle the creation of boxes
def click(event):
    global first_coords, second_coords, boxes, rect_id, current_image_number

    if(first_coords is None):  #ie if we didn't click a 1st time
        first_coords = (event.x,event.y)
    else: #ie if we clicked a first time, and we need to click a second time to create a box
        second_coords = (event.x,event.y)

        if(first_coords==second_coords):  #Double click on a box
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

        else: #Creation of a box
            height = abs(first_coords[1]- second_coords[1])
            width = abs(first_coords[0] - second_coords[0])
            area  = height*width
            if (area>40) and (width>5) and (height>5) :
                rect_id = canvas.create_rectangle(first_coords[0], first_coords[1], second_coords[0], second_coords[1],
                                          dash=(2,2), fill='', outline='red')
                canvas.coords(rect_id, first_coords[0], first_coords[1], second_coords[0], second_coords[1])
                boxes[rect_id]= [first_coords,second_coords,height,width,area,"No Category",current_image_number] # we add a box in our dictionnary
                info_box(rect_id)
            else:
                print("Be careful ! The box you are drawing is too small. Hence, it will not be saved.")


        first_coords = None

    #print("clicked at", event.x, event.y)



# Function to create a popup to tells information about a box created. 
def info_box(rect_id):
   global boxes
   coords1 = boxes[rect_id][0]
   coords2 = boxes[rect_id][1]
   height = boxes[rect_id][2]
   width =  boxes[rect_id][3]
   area = boxes[rect_id][4]

   x1 = coords1[0]
   y1 = coords1[1]
   x2 = coords2[0]
   y2 = coords2[1]

   # String for the message of each point : 
   info_top_left = "Point at top left       :  (" + str(min(x1,x2)) + "," + str(max(y1,y2)) + ")\n"
   info_top_right = "Point at top right      :  (" + str(max(x1,x2)) + "," + str(max(y1,y2)) + ")\n"
   info_bot_left = "Point at bottom left    :  (" + str(min(x1,x2)) + "," + str(min(y1,y2)) + ")\n"
   info_bot_right = "Point at bottom right   :  (" + str(max(x1,x2)) + "," + str(min(y1,y2)) + ")\n"
   
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
        messagebox.showinfo("Information", "You added the following category : " + input)


# Function to replace a category
def replace_category():
    global replace_category_NEW_entry, list_category
    input = entry.get


# Function to create a window to select the category of the current box
def category_selection():
    global selection, variable, menu, entry, list_category, rect_id, replace_category_NEW_entry, replace_category_OLD_entry

    # Window to select a category
    selection = tk.Toplevel(root)
    selection.geometry("800x400")
    selection.title("Category selection")

    variable = tk.StringVar(selection)
    variable.set("Select a category") # default value

    # The menu of category 
    menu = tk.OptionMenu(selection, variable, *list_category, command=update_category)
    menu.pack()


    # Button to replace a category
    replace_category_button = tk.Button(selection,text="Replace a category")

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


# Function to update the image when we decide to go to the next image
def update_image_right():
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

        messagebox.showinfo("Information", "You annoted every images.\nThe json file have been generated.")

        button1.destroy()
        button2.destroy()
        canvas.destroy()



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

def on_focusout_AddCategory(event):
    global entry
    function_focusout(entry, 'Enter the name of the new category')

def on_focusout_ReplaceCategory_NEW(event):
    global replace_category_NEW_entry
    function_focusout(replace_category_NEW_entry, 'Enter the new name of the category you want to change')

def on_focusout_ReplaceCategory_OLD(event):
    global replace_category_OLD_entry
    function_focusout(replace_category_OLD_entry, 'Enter the name of the category to be replaced')


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
            data_image.append(convert_box_to_json(value[2],value[3],value[4],value[5]))
    if(data_image == []):
        return "null"

    else:
        return data_image
            
        
# Function to convert the information of a single box into a dictionnary
def convert_box_to_json(height,width,area,category):
    # Rajouter les coordonnées des points ??? 
    return {'height' : height, 'width' : width, 'area' : area, 'category' : category}

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


#########################
###    MAIN WINDOW    ###
#########################
root = tk.Tk()
root.wm_title("Image Annotator")
root.geometry("1000x1000")
#root.configure(background='pink')


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

welcome_message.config(state= tk.DISABLED)
welcome_message.pack()


# Function called after pressing the button "Start"
def start_app():
    global image_id, canvas, images_resized ,   list_path, button1, button2
    button_start.destroy()

    img = ImageTk.PhotoImage(Image.open("dataset/with_mask/image_0.png"))

    canvas= tk.Canvas(root, width=img.width(), height=img.height(),
                       borderwidth=0, highlightthickness=0)
    #canvas.configure(background = "pink")



    #print("Generation of the images ...")
    #print("It might take a few seconds.")

    list_path = glob.glob("dataset/with_mask/*png") + glob.glob("dataset/without_mask/*png")  # All the paths
    list_path = list_path[0:7] 
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
    canvas.pack(expand=True)



    #########################
    ###      BUTTONS      ###
    #########################
    button1 = tk.Button(root, text="NEXT PICTURE\n-->", bg='white',command=update_image_right)
    button1.pack(pady=5,side=tk.RIGHT)

    button2 = tk.Button(root, text="SAVE", bg='white')
    button2.pack(pady=5,side=tk.BOTTOM)



button_start = tk.Button(root, text="START", bg='white',command=lambda:[welcome_message.destroy(), start_app()])
button_start.pack(pady=5,side=tk.BOTTOM)

# show window
root.mainloop()
