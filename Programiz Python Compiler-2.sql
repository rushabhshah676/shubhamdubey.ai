# Variable Typecasting

# 1. Explicit Typecasting - Convertting one data type to another manually
a = "10"
print(int(a) + 10)
print(type(a))

# 2. Implicit Typecasting - Converting one data type to another automatically by Python

a = 10
b = 10.5
print("Earlier", a, b)
print(type(a),type(b))
# Swap values of these two variables
tamp = a
a = b
b = tamp
print("Afterwards", a, b)
print(type(a),type(b))


# Swap without 3rd var

x = 10
y = 10.5
print("Earlier", x, y)
print(type(x),type(y))

x = x + y
y = x - y
x = x - y
print("Afterwards", x, y)
print(type(x),type(y))



# Loops in Python

a = 1

while a <= 100:
    print(a)
    a = a + 1

# Print odd numbers from 1 to 100

for i in range(1, 101):
    if i % 2 != 0:
        print(i)


# Print even numbers from 0 to 100

for i in range(0,101):
    if i % 2 == 0:
        print(i)


# Range(start, stop, step)

for i in range(8,81,8):
    print(i)

# 8 x 1 = 8
num = int(input("Enter Your Number:\n"))
for i in range(1,11):
    print(num, "x", i, "=",num * 1)


# WAP to find the discount of a product based on the following conditions:
# 1. If price > 10000, discount = 10%
# 2. If price > 5000, discount = 5%
# 3. If price > 1000, discount = 2%
# 4. else no discount
# Print the final price after discount

age = 21

if age > 18:
    print("You are eligible to vote")

elif age > 15:
    print("You are not eligible to vote yet")

else:
    print("you are not eligible to vote")

# WAP to find the discount of a product based on the following conditions:
# 1. If price > 10000, discount = 10%
# 2. If price > 5000, discount = 5%
# 3. If price > 1000, discount = 2%
# 4. else no discount
# Print the final price after discount


price = float(input("Enter the price of the product: "))

if price > 10000:
    discount = price * 10 / 100
elif price > 5000:
    discount = price * 5 / 100
elif price > 1000:
    discount = price * 2 / 100
else:
    discount = 0

final_price = price - discount

print("Discount:", discount)
print("Final Price:", final_price)

