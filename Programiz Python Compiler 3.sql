# Function in python

# 1. user-define functions 

# a. Without any parameter
def greating():
  print("Good Morning")

greating()

# b. With parameter

def sum(a, b):
  print(a+b)


sum(10,20)

# 2. build-in functions


import math

print(math.pow(2,3))



# find the area of the circle 


from math import pi

print(math.pi)

r = float(input("Enter the radius of the circle: "))
pi = 3.14

area = pi * r ** 2

print("Area of the circle =", area)




# Classes and Objects

class Employee:
  emp1 ='Rohit'

  def greet(self):
    print("Hello,", Employee.emp1)


obj = Employee()

obj.greet()



# Constructor in Pytohn

class Employee:

  def _init_(self, id, name, salary):
    self.id = id
    self.name = name
    self.salary = salary


  def emp_detail(self):
    print("Employee Details:")
    print("Emp ID:", self.id)
    print("Emp Name:", self.name)
    print("Emp Salary:", self.salary)



emp1 = Employee(101, "Rohit", 50000)

  