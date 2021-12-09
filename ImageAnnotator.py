import tkinter as tk
from tkinter import messagebox
from PIL import Image, ImageTk

path = "dataset/with_mask/image_101.png"
#img = Image.open(path)
#img.show()

import glob
#print(glob.glob("dataset/with_mask/*png"))



topx, topy, botx, boty = 0, 0, 0, 0
rect_id = None


def get_mouse_posn(event):
    global topy, topx

    topx, topy = event.x, event.y

def update_sel_rect(event):
    global rect_id
    global topy, topx, botx, boty

    botx, boty = event.x, event.y
    canvas.coords(rect_id, topx, topy, botx, boty)  # Update selection rect.




# initialize tkinter
root = tk.Tk()

# set windows title
root.wm_title("Tkinter window")

img = ImageTk.PhotoImage(Image.open(path))


canvas = tk.Canvas(root, width=img.width(), height=img.height(),
                   borderwidth=0, highlightthickness=0)
canvas.pack(expand=True)
canvas.img = img  # Keep reference in case this code is put into a function.
canvas.create_image(0, 0, image=img, anchor=tk.NW)

# Create selection rectangle (invisible since corner points are equal).
rect_id = canvas.create_rectangle(topx, topy, topx, topy,
                                  dash=(2,2), fill='', outline='black')



canvas.bind('<Button-1>', get_mouse_posn)
canvas.bind('<B1-Motion>', update_sel_rect)



'''
# The label widget is a standard Tkinter widget used to display a text or image on the screen
panel = tk.Label(root,image = img)

#The Pack geometry manager packs widgets in rows or columns
panel.pack(side = "bottom", fill = "both", expand="yes")
'''

button1 = tk.Button(root, text="-->", bg='white', 
                              command=lambda: new_window())
button1.pack(side=tk.BOTTOM)

button2 = tk.Button(root, text="<--", bg='white', 
                              command=lambda: new_window())
button2.pack(side=tk.BOTTOM)

button3 = tk.Button(root, text="Save", bg='white', 
                              command=lambda: new_window())
button3.pack(side=tk.BOTTOM)


# show window
root.mainloop()

print("Position x haut gauche :",topx)
print("Position y haut gauche :" ,topy)
print("Position x bas droite :",botx)
print("Position y bas droite :" ,boty)
