# 

# 1. A collection of item which is ordered or changeable. Allows dublicate members.

a = [1, 1.5, 'a', True, "Hello"]

print(type(a))

print(a)

print(a[-2])


a[-2] = False

print(a)



# Slicing

b = [1, 2, 3, 4, 5, 5, 5, 5, 6, 7, 8, 9, 10]

print(b[3:6])

print(b[-1: :-1])



# List Methods

print(len(b))  # length of the list

print(b.count(5))  # Count of element 5 in the list

print(b.index(5))  # Index of element 5 in the list

b.append(11)  # Append 11 to the  end of list
print(b)

b.extend([12, 13, 14])  # Extend the list by appending elements from the iterable
print(b)

b.insert(0, 0)  # Insert 0 at index 0
print(b)

print(b.pop())  # Remove and return the last item in the list

b.remove(5)  # Remove the first occurrance of 5 in the list
print(b)

c = [12, 1, 4, 2, 6, 3, 7, 5, 9, 8]

c.sort()  # sort the list in ascending order
print(c)

c.reverse()  # Reverse the lement of the list in place
print(c)




# 2. Tuple - A collection of items which is ordered and unchangeable. Allows dublicate members.

tup = [1, 1.5, 'a', True, 'Hello']

print(type(tup))

print(tup)

print(tup.count(1))  # Count of element 1 in the tuple

print(tup.index('a'))  # Index of element 'a' in the tuple

print(tup[1:4])  # Slicing the tuple from index 1 to 3

print(tup[-1: :-1])  # Revesing the tuple using slicing

print(len(tup))  # Length of the tuple

print(tup[0])  # Accessing the first element of the tuple


tup[0] = 10  # this will raise an error because tuples are immutable




# 3. Set - A collection of items which is unordered and unindexed. No dublicate members.

set_a = {3,1,4,2,6,5,6,5,7,8,10,9}


print(set_a)  # Dublicates will be remooved

set_b = {2, 4, 6, 8}

print(set_a.umion(set_b))  # Union of set_a and set_b

print(set_a.intersection(set_b))  # Intersection of set_a and set_b

print(set_a.differenceumion(set_b))  # Difference of set_a and set_b


# Symmetric Difference

c = {1, 2, 3, 4, 5}

