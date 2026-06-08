CREATE TABLE User (
    User_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Password VARCHAR(100)
);

CREATE TABLE Gesture (
    Gesture_ID INT PRIMARY KEY,
    Gesture_Name VARCHAR(100),
    Gesture_Image VARCHAR(255),
    Meaning VARCHAR(255)
);

CREATE TABLE Prediction (
    Prediction_ID INT PRIMARY KEY,
    User_ID INT,
    Gesture_ID INT,
    Predicted_Text VARCHAR(255),
    Prediction_Time DATETIME,
    FOREIGN KEY (User_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Gesture_ID) REFERENCES Gesture(Gesture_ID)
);

CREATE TABLE Speech_Output (
    Speech_ID INT PRIMARY KEY,
    Prediction_ID INT,
    Generated_Speech VARCHAR(255),
    FOREIGN KEY (Prediction_ID) REFERENCES Prediction(Prediction_ID)
);
