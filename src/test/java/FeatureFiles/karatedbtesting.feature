Feature: Karate DB Testing


  Background: Intializing DB
    * def db =  Java.type('misc.MyDbUtil')

  Scenario: Testing select query
    * def rows =  db.selectStatement("select * from tools")
    * print rows
    * match rows contains "karate"

  Scenario: Testing insert query
    * def res =  db.insertStatement("insert into tools values(10, "bcs","com"))
    * print res
    * match response == success