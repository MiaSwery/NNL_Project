#https://medium.com/nerd-for-tech/building-an-object-detector-in-tensorflow-using-bounding-box-regression-2bc13992973f

import json
import numpy as np
import os
import PIL
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from tensorflow.keras.models import Sequential
from keras.preprocessing import image
import pathlib
import pandas as pd
from PIL import Image 
from PIL.ImageDraw import Draw

classes = ['with_mask', 'without_mask']

f = open ('annotations.json', "r")
 
data = json.loads(f.read())

train_images  = []   # Les images d'origine
train_targets = []   # Les coordonnées des boxes 
train_labels  = []   # Les catégories des boxes  


width = 216
height = 216
num_classes = 2
 
# Récupérer les données depuis le json (ie les informations sur les boxes)
def load_data():
	for i in data['data']:
	    path = i['image']['path']
	    train_img = image.load_img(path,target_size=(height,width)) #L'image d'origine
	    train_img_arr = image.img_to_array(train_img)

	    for j in i['image']['boxes']:  # On regarde les boxes correspondantes à l'image d'origine
	    	if(len(j)!=1):
	    		w = j['width']
	    		h = j['height']
	    		category = j['category']
	    		xmin = min(j['point top left'][0],j['point bottom right'][0])
	    		ymin = min(j['point top left'][1],j['point bottom right'][1])
	    		xmax = max(j['point top left'][0],j['point bottom right'][0])
	    		ymax = max(j['point top left'][1],j['point bottom right'][1])
	    		train_images.append(train_img_arr)
	    		train_targets.append((xmin,ymin,xmax,ymax))
	    		train_labels.append(classes.index(category))



load_data()

# Si on veut transformer en np array : 
train_images = np.array(train_images)
train_targets = np.array(train_targets)
train_labels = np.array(train_labels)

input_shape = (height, width, 3)
input_layer = tf.keras.layers.Input(input_shape)

#create the base layers

base_layers = layers.experimental.preprocessing.Rescaling(1./255, name='bl_1')(input_layer)
base_layers = layers.Conv2D(16, 3, padding='same', activation='relu', name='bl_2')(base_layers)
base_layers = layers.MaxPooling2D(name='bl_3')(base_layers)
base_layers = layers.Conv2D(32, 3, padding='same', activation='relu', name='bl_4')(base_layers)
base_layers = layers.MaxPooling2D(name='bl_5')(base_layers)
base_layers = layers.Conv2D(64, 3, padding='same', activation='relu', name='bl_6')(base_layers)
base_layers = layers.MaxPooling2D(name='bl_7')(base_layers)
base_layers = layers.Flatten(name='bl_8')(base_layers)


classifier_branch = layers.Dense(128, activation='relu', name='cl_1')(base_layers)
classifier_branch = layers.Dense(num_classes, name='cl_head')(classifier_branch)  

locator_branch = layers.Dense(128, activation='relu', name='bb_1')(base_layers)
locator_branch = layers.Dense(64, activation='relu', name='bb_2')(locator_branch)
locator_branch = layers.Dense(32, activation='relu', name='bb_3')(locator_branch)
locator_branch = layers.Dense(4, activation='sigmoid', name='bb_head')(locator_branch)

model = tf.keras.Model(input_layer,
         outputs=[classifier_branch,locator_branch])
