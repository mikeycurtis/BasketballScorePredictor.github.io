import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from tensorflow.keras.layers.experimental import preprocessing
from tensorflow.keras import regularizers
import pandas as pd


def getPrediction(input_arr):
    yup = []
    yup.append(input_arr)
    model = tf.keras.models.load_model(
        '../finalModelNBA')
    return(model.predict(yup)[0][0])
