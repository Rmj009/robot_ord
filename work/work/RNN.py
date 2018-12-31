import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.preprocessing import MinMaxScaler
from keras.models import Sequential
from keras.layers import LSTM, Dense, Activation

#import matplotlib
import matplotlib.pyplot as plt
import numpy as np


def load_data(arr, sequence_length=10, split=0.8):

    #df = pd.read_csv(file_name, sep=',', usecols=[1])
    #data_all = np.array(df).astype(float)

    data_all = np.array(arr).astype(float)
    scaler = MinMaxScaler()
    data_all = scaler.fit_transform(data_all)
    data = []
    for i in range(len(data_all) - sequence_length - 1):
        data.append(data_all[i: i + sequence_length + 1])
    reshaped_data = np.array(data).astype('float64')
    #np.random.shuffle(reshaped_data)
    x = reshaped_data[:, :-1]
    y = reshaped_data[:, -1]
    split_boundary = int(reshaped_data.shape[0] * split)
    train_x = x[: split_boundary]
    test_x = x[split_boundary:]

    train_y = y[: split_boundary]
    test_y = y[split_boundary:]

    return train_x, train_y, test_x, test_y, scaler


def RNN():
    print("Build model!!")
    model = Sequential()
    model.add(LSTM(256, return_sequences=True, input_shape=(10,1)))
    model.add(LSTM(256, return_sequences=True))
    model.add(LSTM(256, return_sequences=True))
    model.add(LSTM(256, return_sequences=False))
    model.add(Dense(output_dim=1))
    model.add(Activation('linear'))

    model.compile(loss='mse', optimizer='rmsprop')
    return model

if __name__ == '__main__':
    data = np.load('q_all_axis0.npy')[1::]
    data = data.reshape(-1,1)
    X_train, y_train, X_test, y_test, scaler = load_data(data)

    # model
    model = RNN()
    model.fit(X_train, y_train, validation_split=0.1, batch_size=128, epochs=150, shuffle=True)
    
