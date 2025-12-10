print(2 + 2)
#Output should be 4
print(48 + 48)
#Output should be 96 
name = "Brandon"
#Please print your name in quotations
print(name)
#Output should be "Your name"
print ((4 + 4) * 5)
#Output should be 40
login_attempt = '3'
username = 'alice'
color = 'blue'
print(login_attempt)
print(username)
print(color)
#input and output
name = "Alice"
print (name)  

name = input("Enter your name:")   #input will prompt user to enter their name
print("Hello,", name)

#create an age variable 
age = input("How old are you?")  #input will prompt user to ask how old they are
print (age)
#changing string to integer
age = int(input("How old are you?"))  #input will prompt user to ask how old they are
print (age)
print (type(age)) #type will list if it is an integer, string etc. 

#Access Password with If and Else
password = input("Please enter your password:")

password = 'cyber123'  #conditonals require double equal sign
if password == "cyber123":
    print ("Access Granted")
else:
    print ("Access Denied")

#List and Loops
ips = ["10.0.0.1", "10.0.0.2", "172.16.0.5"]
for ip in ips:
    print("Checking",ip)

#Week 10 Class Activity
#Question 1
username = "Alice"   #Create Username (String)
login_attempts = 2 #Create Login_attempts (integer)
account_locked = True #Create account_locked (boolean)



