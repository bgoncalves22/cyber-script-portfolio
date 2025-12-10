#Lab 4 - Python
#Question 1

file_name = "web_access.log.txt" #declade the file_name and what file it is
with open (file_name, 'r') as temp: #Open the declared filename
    content = temp.read()
count = content.count ("401" or "403") #count how many 401 or 403 is found
print("The string '401' appears", count, "times.") #Display how many are found and the number of times
line = "2025-11-05T09:01:12Z 203.0.113.55 GET /admin 401"
parts = line.split() #line split sections the document 
print(parts)

import re
from collections import Counter

# Read your log file
with open(file_name) as temp:
    logs = temp.readlines()

ip_regex = r"\b\d{1,3}(?:\.\d{1,3}){3}\b"
counter = Counter()

for line in logs:
    if " 401" or "403" in line:  # look for HTTP 401 status
        ip_match = re.search(ip_regex, line)
        if ip_match:
            ip = ip_match.group()
            counter[ip] += 1

# Show results
print("IP addresses with 401 and 403 responses:")
for ip, count in counter.items():
    print(f"{ip}: {count} times")

# IP with highest 401 occurrences
if counter:
    worst_ip, worst_count = counter.most_common(1)[0]
    print(f"\nIP with the most 401 errors: {worst_ip} ({worst_count} times)")



# Counter for failed admin attempts per IP

#Question 2     


fail_counts = {}   # dictionary to count failures per IP

with open(file_name) as temp:
    for line in temp:

        #  Loop through each line; split into parts
        parts = line.split()

        # Protect against short lines
        if len(parts) < 3:
            continue

        #  Extract IP and status again
        ip = parts[0]              # example: 192.168.1.10
        path = parts[1]            # example: /admin
        status = parts[-1]         # example: 401

        # Define failure rule: path contains "/admin" AND status == "401"
        if "/admin" in path and status == "401":
            
            # Count failures per IP using a dictionary
            if ip not in fail_counts:
                fail_counts[ip] = 0
            fail_counts[ip] += 1

# Print any IP with count >= 4
print("Possible brute-force attempts (4+ failures):")
for ip, count in fail_counts.items():
    if count >= 4:
        print(f"{ip}: {count} failed attempts")

#Question 3 

import re

file_name1 = "urls.txt"



with open(file_name1) as temp:
    for line in temp:

        # Normalize the line (remove spaces, lowercase)
        url = line.strip().lower()

        # Skip empty lines
        if url == "":
            continue

        # Create a score starting at 0
        score = 0

        # Typosquat check: contains "rnicrosoft"
        if "rnicrosoft" in url:
            score += 1

        # Suspicious TLD check (.ru or .cn)
        # Extract hostname before any path
        # Example: http://bad-domain.ru/login → "bad-domain.ru"
        match = re.search(r"https?://([^/]+)", url)
        if match:
            hostname = match.group(1)
            
            if hostname.endswith(".ru") or hostname.endswith(".cn"):
                score += 1

        # Path contains "login"
        if "login" in url:
            score += 1

        # Print the URL and its score
        print(f"URL: {url}  --> Score: {score}")

#The higher the score - the more suspcious is the URL. 

#Question 4: #comments are located on WORD file 


1#
known_bad = [] #1
file_kb = open("known_bad_hashes.txt") # open the file #2
for line in file_kb: #3
    h = line.strip() #4
if h != "": #5
    known_bad.append(h) #6
file_kb.close() #7
2#
bad_count = 0 #8
ok_count = 0 #9
3#
file_hashes = open("hashes.txt") #10
for line in file_hashes: #11
    line = line.strip() #12
    if line == "": 
        continue
parts = line.split(",") #15
filename = parts[0].strip() #16
filehash = parts[1].strip() #17
#5
if filehash in known_bad: #18
    print(filename, "MALICIOUS") #19
    bad_count += 1 #20
else: #21
    print(filename, "OK") #22
    ok_count += 1 #23
    file_hashes.close() #24
6#
print("Totals -> BAD:", bad_count, "OK:", ok_count) #25