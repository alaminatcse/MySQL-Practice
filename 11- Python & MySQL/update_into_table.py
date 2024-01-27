import mysql.connector

mydbConnection = mysql.connector.connect (
    host = "localhost",
    user = "root",
    passwd = "Helloserver2&",
    database = "pythondb"
)

myCursor = mydbConnection.cursor()
sqlQuery = """
            UPDATE Student
            SET Name = "Abdullah"
            WHERE Roll = 3;
            """
            
myCursor.execute(sqlQuery)
mydbConnection.commit()

print("Update Data Successfully")