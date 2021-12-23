from PIL import Image, ImageTk
import glob
import os

extensions = ['jpg', 'jpeg', 'png']

list_path_with_mask = [] # All the paths of the images with mask
list_path_without_mask = [] # All the paths of the images without mask

for i in extensions:
    list_path_with_mask = list_path_with_mask + glob.glob("dataset/with_mask/*"+i) 

for i in extensions:
    list_path_without_mask = list_path_without_mask + glob.glob("dataset/with_mask/*"+i) 

images_with_mask = [Image.open(i) for i in list_path_with_mask] #All the images with mask

images_without_mask = [Image.open(i) for i in list_path_without_mask] #All the images without mask

def resize(list_images,string):
    new_images = []
    for i in range(len(list_images)):
        ig = list_images[i]
        width_ig, height_ig = ig.size

        if(width_ig > 500 or height_ig >500): # ie if an image is too big ==> We need to resize it.
            scale = max(width_ig,height_ig)/500
            height_ig = int(height_ig / scale)
            width_ig = int(width_ig / scale)
            new_images.append(ig.resize((width_ig,height_ig)))

        else:
            new_images.append(ig)
      

        new_images[i].save("dataset/resized/" + string + "/image" + str(i) +".png")





resize(images_with_mask,"with_mask")
resize(images_without_mask,"without_mask")

