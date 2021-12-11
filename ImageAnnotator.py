import tkinter as tk
from tkinter import messagebox
from tkinter import Label
from PIL import Image, ImageTk
import glob

first_coords = None
second_coords = None

boxes = {} # Dictionnary to stock the information of every box

rect_id = 0 # Number of the current selected rectangle

current_image_number = 0 # Number of the current image


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
                                          dash=(2,2), fill='', outline='black')
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
   info_top_left = "point at top left           : (" + str(min(x1,x2)) + " , " + str(max(y1,y2)) + ") \n"
   info_top_right = " point at top right         : (" + str(max(x1,x2)) + " , " + str(max(y1,y2)) + ") \n"
   info_bot_left = "point at bottom left     : (" + str(min(x1,x2)) + " , " + str(min(y1,y2)) + ") \n"
   info_bot_right = "point at bottom right   : (" + str(max(x1,x2)) + " , " + str(min(y1,y2)) + ") \n"
   
   info_height = "height   : " + str(height) + " \n"
   info_width = "width   : " +  str(width) + " \n"
   info_area = "area   : " + str(area) + " \n"

   info_points = info_top_left + info_top_right + info_bot_left + info_bot_right + info_height + info_width + info_area

   message = "You selected a box with the following information : \n\n  " + info_points

   # Popup window : 
   popup= tk.Toplevel(root)
   popup.geometry("800x500")
   popup.title("Information : New box")
   Label(popup, text= message).place(x=20,y=20)

   # Button to quit the popup window : 
   exit_button = tk.Button(popup, text="OK", command=popup.destroy)
   exit_button.pack(pady=5 , side=tk.BOTTOM)

   # Button to select the category :
   selection_button = tk.Button(popup, text = "Select a category",command=category_selection)
   selection_button.pack(pady=5, side = tk.BOTTOM)


# Function to update the category of the current box
def update_category(choice):
    global boxes, rect_id

    #update of the category :
    info = boxes[rect_id]
    info[5] = choice
    boxes[rect_id] = info

    #print(boxes)


# Function to create a window to select the category of the current box
def category_selection():
    selection = tk.Toplevel(root)
    selection.geometry("400x400")
    selection.title("Category selection")

    variable = tk.StringVar(selection)
    variable.set("No Category") # default value

    w = tk.OptionMenu(selection, variable, "No Category", "Category 1", "Category 2", "Category 3", command=update_category)
    w.pack()

    # Button to quit the window : 
    exit_button = tk.Button(selection, text="OK", command=selection.destroy)
    exit_button.pack(pady=5 , side=tk.BOTTOM)


# Function to update the image when we decide to go to the next image
def update_image_right():
    global current_image_number, rect_id, button1, button2

    for key,value in boxes.items(): # Removing the draw of the boxes of the previous image
        if(value[6]==current_image_number):
            canvas.delete(key)


    # next image
    current_image_number += 1

    if(current_image_number<=len(images_resized)): #If we still have images to annotate.
        # change image on canvas
        new_image = images_resized[current_image_number]
        canvas.config(width=new_image.width(), height=new_image.height())
        canvas.itemconfig(image_id, image=new_image)

    else: # If there are no more images to annotate.
        canvas.delete("all")

        messagebox.showinfo("Information", "You annoted every images.")

        button1.destroy()
        button2.destroy()

    

#########################
###    MAIN WINDOW    ###
#########################

root = tk.Tk()
root.wm_title("Tkinter window")
root.geometry("1000x1000")

img = ImageTk.PhotoImage(Image.open("dataset/with_mask/image_0.png"))

canvas= tk.Canvas(root, width=img.width(), height=img.height(),
                   borderwidth=0, highlightthickness=0)
canvas.pack(expand=True)


print("Generation of the images ...")
print("It might take a few seconds.")

list_images = glob.glob("dataset/with_mask/*png") + glob.glob("dataset/without_mask/*png")  # All the paths

images = [Image.open(i) for i in list_images] #All the images

for i in range(len(images)):
    ig = images[i]
    width_ig, height_ig = ig.size

    if(width_ig > 500 or height_ig >500): # ie if an image is too big ==> We need to resize it.
        scale = max(width_ig,height_ig)/500
        height_ig = int(height_ig / scale)
        width_ig = int(width_ig / scale)
        images[i] = ig.resize((width_ig,height_ig))

images_resized = [ImageTk.PhotoImage(i) for i in images] #All the resized images

print("All the images have been generated.")

image_id = canvas.create_image(0, 0, anchor='nw', image=images_resized[current_image_number])


canvas.bind("<Button-1>", click)
canvas.pack()



#########################
###      BUTTONS      ###
#########################
button1 = tk.Button(root, text="NEXT PICTURE\n-->", bg='white',command=update_image_right)
button1.pack(pady=5,side=tk.RIGHT)

button2 = tk.Button(root, text="SAVE", bg='white')
button2.pack(pady=5,side=tk.BOTTOM)


# show window
root.mainloop()
