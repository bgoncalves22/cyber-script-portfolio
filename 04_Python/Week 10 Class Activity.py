#Week 10 Class Activity
#Question 1
name = "Alice"   #Create Username (String)
login_attempts = 2 #Create Login_attempts (integer)
account_locked = True #Create account_locked (boolean)

print (name)
print (login_attempts)
print (account_locked)

#Question 2 
name = input("Please enter your username:")   #enter your username
print (name) #username will print 

login_attempts = input("How many login attempts?") 
print (login_attempts)  #how many attempts will display 

login_attempts = int(input("How many login attempts?"))
print (login_attempts)

login_attempts == 4
if login_attempts > 3:
    print ("Account Locked for", name)
else:
    print ("Welcome", name)
    
#Question 3
ips = ["10.0.0.1", "172.16.0.8", "8.8.8.8"]

for ip in ips:
    print("Checking", ip)

    if ip.startswith("10.") or ip.startswith("172."):
        print(ip, "is internal")
    else:
        print(ip, "is external")

# Question 4

#Identify datetime
import datetime

# Step 2: Define the function
def check_ip(ip):
    if ip.startswith("10.") or ip.startswith("192.168."):
        return "Internal"
    else:
        return "External"

# Step 3: Loop through the IP list and print timestamp, IP, and result
ips = ['10.0.0.5', '8.8.8.8']

for ip in ips:
    timestamp = datetime.datetime.now()
    print(timestamp, ip, check_ip(ip))

#Question 5

file_name = "access_log.txt" 

import os

def count_failed_logins(file_name):
    """
    Counts the number of lines containing '401' in the given file.
    """
    try:
        with open(file_name, "r") as f:
            count = 0
            for line in f:
                if "401" in line:
                    count += 1
            return count
    except FileNotFoundError:
        print(f"Error: File '{file_name}' not found in the current folder.")
        return None
    except PermissionError:
        print(f"Error: Permission denied for '{file_name}'")
        return None
    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        return None


# Use the txt file directly
file_name = "access_log.txt"  # Make sure this file is in the same folder as your script

failed = count_failed_logins(file_name)

if failed is not None:
    print("Total failed logins:", failed)
    if failed > 3:
        print("ALERT: Too many failed logins!")
