# Singleton Pattern Example

## Project Name
SingletonPatternExample

## Objective
To implement the Singleton Design Pattern in Java and ensure that only one instance of the Logger class exists throughout the application lifecycle.

## Files in the Project

### 1. Logger.java

Purpose:
The Logger class implements the Singleton Pattern and provides a centralized logging utility.

Features:
- Private static instance variable.
- Private constructor to prevent object creation from outside the class.
- Public static getInstance() method to access the single instance.
- log() method to display log messages.

Responsibilities:
- Stores the single instance of Logger.
- Prevents external object creation.
- Returns the same Logger object whenever requested.
- Displays log messages.

### 2. SingletonTest.java

Purpose:
Tests the Singleton implementation by obtaining multiple references to the Logger object and verifying that they point to the same instance.

Features:
- Creates two Logger references.
- Calls the logging method.
- Compares object references.
- Displays hash codes to prove only one object exists.

Responsibilities:
- Gets Logger instances using getInstance().
- Verifies that both references point to the same object.
- Prints messages to demonstrate Singleton behavior.

## Expected Output

Logger instance created.
LOG: Application started.
LOG: Processing data.
Only one Logger instance exists.
Logger1 HashCode: XXXXXXXX
Logger2 HashCode: XXXXXXXX

Note:
The hash code values may vary on different systems, but both values should be identical.

## Conclusion

The Singleton Pattern was successfully implemented using the Logger class. The application ensures that only one Logger object is created and shared throughout the program. This provides consistent logging and efficient resource usage.
