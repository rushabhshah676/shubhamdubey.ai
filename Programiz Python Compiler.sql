# Conditional Statements
age = int(input("Enter your age:"))

# if age >= 18:
#    print("You can vote")

# else:
#    print("You can vote")




# 70>can't drive
# 18>can drive
# 18<not eligible


if age>=70:
  print("You are too old to drive")

elif age>=18:
  print("You are eligible to drive")

else:
  print("You are not eligible to drive")





# WAP(Write A Program) to find the largest of 3 numbers
# WAP to find the highest marks in 3 subjects





# WAP(Write A Program) to find the largest of 3 numbers
num1 = int(intput("Enter your first number: "))
num2 = int(intput("Enter your second number: "))
num3 = int(intput("Enter your third number: "))

if num1 >= num2 and num1 >= num3:
  lagest = num1
elif num2 >= num1 and num2 >= num3:
    largest = num2
else:
    largest = num3

print("The largest number is:", largest)



# WAP to find the highest marks in 3 subjects

marks1 = int(input("Enter marks of Subject 1: "))
marks2 = int(input("Enter marks of Subject 2: "))
marks3 = int(input("Enter marks of Subject 3: "))

if marks1 >= marks2 and marks1 >= marks3:
    highest = marks1
elif marks2 >= marks1 and marks2 >= marks3:
    highest = marks2
else:
    highest = marks3

print("Highest marks are:", highest)




