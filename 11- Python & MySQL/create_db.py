import mysql.connector

mydbConnection = mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd = "Helloserver2&"
)

myCursor = mydbConnection.cursor()

dbName = "PythonDB"
sqlQuery = "CREATE DATABASE " + dbName
myCursor.execute(sqlQuery)
