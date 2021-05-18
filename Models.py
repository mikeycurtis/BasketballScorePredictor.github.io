import numpy as np
import pandas as pd
import tensorflow as tf

from tensorflow import keras
from tensorflow.keras import layers
from tensorflow.keras.layers.experimental import preprocessing
from tensorflow.keras import regularizers
from tensorflow.keras.callbacks import EarlyStopping


def build_and_compile_model(norm, num_layers=2, nodes=128, loss_func='mse'):
    '''
    :param norm: takes a normalizer layer -- will have the input data in it
    :param num_layers: Number of layers in the model
    :param nodes: Number of nodes in each layer
    :param loss_func: select a loss funct -- 'mse', 'mae', 'huber' etc
    :return: an untrained model
    '''
    model = keras.Sequential([
        norm
    ])
    i = 0
    while i < (num_layers - 1):
        model.add(layers.Dense(nodes, activation='relu', kernel_regularizer=regularizers.l2(0.001)))
        model.add(layers.Dropout(0.5))
        i += 1
    model.add(layers.Dense(nodes, activation='relu', kernel_regularizer=regularizers.l2(0.001)))
    model.add(layers.Dense(1))

    model.compile(loss=loss_func,
                  optimizer=tf.keras.optimizers.Adam(0.001))
    return model


def find_mae(model, X_test, y_test):
    '''

    :param model: A tensorflow regression model
    :param X_test: the set of variables that will be used to make predictions with
    :param y_test: the corresponding actual values
    :return: the mean absolute error of the model's predictions on the given variables.
    '''
    predictions = model.predict(X_test)
    d = {"predicted": list(predictions), "actual": y_test.values}
    predict_v_actual = pd.DataFrame(data=d)
    predicted = []
    for row in predict_v_actual['predicted']:
        predicted.append(row[0])

    predict_v_actual['prediction'] = pd.Series(predicted)
    predict_v_actual['difference'] = predict_v_actual['actual'] - predict_v_actual['prediction']
    predict_v_actual['abs_diff'] = abs(predict_v_actual['difference'])
    mae = sum(predict_v_actual['abs_diff']) / len(predict_v_actual['abs_diff'])
    return mae


def fit_model(model, X_train, y_train, patience=30, verbose=0):
    '''

    :param model: takes in a tensorflow model
    :param X_train: X_training dataset
    :param y_train: y_training data
    :param patience: how many epochs after no improvement to stop training
    :param verbose: how to 'see' the model training
    :return: nothing is returned -- the model is just trained
    '''
    es = EarlyStopping(monitor='val_loss', patience=patience)
    model.fit(
        X_train, y_train,
        validation_split=0.2, callbacks=[es],
        verbose=verbose, epochs=1000)


def createNormalizer(X_train):
    '''

    :param X_train: the training dataset
    :return: a Normalizer layer that will be needed to construct TensorFLow model
    '''
    normalizer = preprocessing.Normalization()
    normalizer.adapt(np.array(X_train))
    return normalizer


def splitData(df, x_labels, y_label, split=0.8):
    '''

    :param df: the dataframe that is being used
    :param x_labels: the columns used to train the model with
    :param y_label: the column used to test the model with
    :param split: the percentage of training data out of the original dataset
    :return: X_train, X_test, y_train, y_test
    '''
    training_data = df.sample(frac=split, random_state=0)
    testing_data = df.drop(training_data.index)

    X_train = training_data[x_labels]
    X_test = testing_data[x_labels]

    y_train = training_data[y_label]
    y_test = testing_data[y_label]

    return X_train, X_test, y_train, y_test
