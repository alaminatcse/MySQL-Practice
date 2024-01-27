import mysql.connector

mydbconnection = mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd = "Helloserver2&"
)

print(mydbconnection)