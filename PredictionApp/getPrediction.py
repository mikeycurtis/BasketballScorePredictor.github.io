import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from tensorflow.keras.layers.experimental import preprocessing
from tensorflow.keras import regularizers
import pandas as pd


def getPrediction(input_arr):
    inputs = []
    inputs.append(input_arr)
    model = tf.keras.models.load_model(
        '../finalModelNBA')
    return(model.predict(inputs)[0][0])
