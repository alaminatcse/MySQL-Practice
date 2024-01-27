import mysql.connector

dbName = "pythonDb"
mydbConnection = mysql.connector.connect (
    host = "localhost",
    user = "root",
    passwd = "Helloserver2&",
    database = dbName
)

myCursor = mydbConnection.cursor()

sqlQuery = """
            CREATE TABLE Student (
                Name VARCHAR(25) NOT NULL,
                Roll INT PRIMARY KEY,
                Department VARCHAR(10) NOT NULL,
                CGPA VARCHAR(5) NOT NULL
            );
            """

myCursor.execute(sqlQuery)
print("Create Table Successfully")