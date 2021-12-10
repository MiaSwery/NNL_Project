import tkinter as tk
from tkinter import messagebox
from tkinter import Label
from PIL import Image, ImageTk

path = "dataset/with_mask/image_101.png"
'''
img = Image.open(path)
img.show()

import glob
#print(glob.glob("dataset/with_mask/*png"))
'''

first_coords = None
second_coords = None

boxes = []

rect_id = 0


# Fonction to handle the creation of boxes
def click(event):
    global first_coords
    global second_coords
    global boxes
    global rect_id

    if(first_coords is None):  #ie if we didn't click a 1st time
        first_coords = (event.x,event.y)
    else: #ie if we clicked a first time, and we need to click a second time to create a box
        second_coords = (event.x,event.y)
        rect_id = canvas.create_rectangle(first_coords[0], first_coords[1], second_coords[0], second_coords[1],
                                  dash=(2,2), fill='', outline='black')
        canvas.coords(rect_id, first_coords[0], first_coords[1], second_coords[0], second_coords[1]) 
        boxes = boxes + [[rect_id,first_coords,second_coords,"No Category"]]
        info_box(first_coords,second_coords)


        first_coords = None

    print("clicked at", event.x, event.y)



# Fonction to create a popup to tells information about a box created. 
def info_box(coords1, coords2):
   x1 = coords1[0]
   y1 = coords1[1]
   x2 = coords2[0]
   y2 = coords2[1]

   # String for the message of each point : 
   info_top_left = "point at top left           : (" + str(min(x1,x2)) + " , " + str(max(y1,y2)) + ") \n"
   info_top_right = " point at top right         : (" + str(max(x1,x2)) + " , " + str(max(y1,y2)) + ") \n"
   info_bot_left = "point at bottom left     : (" + str(min(x1,x2)) + " , " + str(min(y1,y2)) + ") \n"
   info_bot_right = "point at bottom right   : (" + str(max(x1,x2)) + " , " + str(min(y1,y2)) + ") \n"
   info_points = info_top_left + info_top_right + info_bot_left + info_bot_right

   message = "You selected a box with the following information : \n\n  " + info_points

   # Popup window : 
   popup= tk.Toplevel(root)
   popup.geometry("410x230")
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
    global boxes
    global rect_id

    for i in boxes:
        if i[0]==rect_id:
            i[3]=choice

    print(boxes)


# Fonction to create a window to select the category of the current box
def category_selection():
    selection = tk.Toplevel(root)
    selection.geometry("150x150")
    selection.title("Category selection")

    variable = tk.StringVar(selection)
    variable.set("No Category") # default value

    w = tk.OptionMenu(selection, variable, "No Category", "Category 1", "Category 2", "Category 3", command=update_category)
    w.pack()

    # Button to quit the window : 
    exit_button = tk.Button(selection, text="OK", command=selection.destroy)
    exit_button.pack(pady=5 , side=tk.BOTTOM)





#########################
###    MAIN WINDOW    ###
#########################

root = tk.Tk()
root.wm_title("Tkinter window")
img = ImageTk.PhotoImage(Image.open(path))


canvas= tk.Canvas(root, width=img.width(), height=img.height(),
                   borderwidth=0, highlightthickness=0)
canvas.pack(expand=True)
canvas.create_image(0, 0, image=img, anchor=tk.NW)


canvas.bind("<Button-1>", click)
canvas.pack()


#########################
###      BUTTONS      ###
#########################
button1 = tk.Button(root, text="-->", bg='white')
button1.pack(side=tk.BOTTOM)

button2 = tk.Button(root, text="<--", bg='white')
button2.pack(side=tk.BOTTOM)

button3 = tk.Button(root, text="Save", bg='white')
button3.pack(side=tk.BOTTOM)




# show window
root.mainloop()
