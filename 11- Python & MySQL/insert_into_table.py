import mysql.connector

mydbConnection = mysql.connector.connect (
    host = "localhost",
    user = "root",
    passwd = "Helloserver2&",
    database = "pythondb"
)

myCursor = mydbConnection.cursor()
sqlQuery = """
            INSERT INTO Student (Name, Roll, Department, CGPA)
            VALUES("Abdur Rahim", 3, "ECE", 3.91);
            """
            
myCursor.execute(sqlQuery)
mydbConnection.commit()
print("Insert Data Successfully")