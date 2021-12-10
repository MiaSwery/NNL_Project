import tkinter as tk
from PIL import Image, ImageTk


path = "dataset/with_mask/image_0.png"
#img = Image.open(path)
#img.show()
import glob



#print(glob.glob("dataset/with_mask/*.png"))

# initialize tkinter
root = tk()
app = Window(root)

# set window title
root.wm_title("Tkinter window")

img = ImageTk.PhotoImage(Image.open(path))

#The Label widget is a standard Tkinter widget used to display a text or image on the screen.
panel = tk.Label(window, image = img)

#The Pack geometry manager packs widgets in rows or columns.
panel.pack(side = "bottom", fill = "both", expand = "yes")


# show window
root.mainloop()
