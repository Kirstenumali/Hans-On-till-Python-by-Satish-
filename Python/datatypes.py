# Numerical datatypes 
# int, float, complex numbers
age = 10 
print(age)
print(type(age))

sqft = 5.642432529052130592 
print(sqft)
print(type(sqft))

result = age + sqft
print(result)
print(type(result))

mynum = 7+2j

print(mynum)
print(type(mynum))

# # String datatypes
# # str
name = "Kirsten"
print(name)
print(type(name))




#Sequencing
# list, tuples
nums = [1,2,3,4,5,6,7,8,9,]
print(nums)
print(type(nums))

nums_tuples =(1,2,3,4,5,6,7)
print(nums_tuples)
print(type(nums_tuples))

#set
nums_set = {1,2,3,4,5,6,7,8,9,2,2,3,45,1,6,7,8,9,1,24,3}

nums_set2 = {65,200,235,400,403,404,407}

#nums_set.update(nums_set2)
#nums_set.add(1000)
#nums_set.discard(45)

print(nums_set.union(nums_set2))
print(nums_set.intersection(nums_set2))

print(nums_set)
print(type(nums_set))





#dict 
eatables = {
    "fruits" : "apples", 
    "vegetables" : "Brocolli",
    "sweet" : "Graham Cake",
}

print(eatables["fruits"])
print(eatables.keys())
print(eatables())


#print(eatables)
#print(type(eatables))

#bool
married = False 
print(married)
print(type(married))

