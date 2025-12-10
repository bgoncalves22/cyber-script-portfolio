with open ('web_access.log') as f:
    for line in f:
        parts = line.split()
         if len(parts) <5:
        continue
    ip = parts[1]
    status = parts [-1]
    if status in ('401','403'):
        counts[ip] = counts.get(ip,0) + 1
print('Failures by IP:')
for ip, c in counts.items():
    print(ip,c)
if counts:
    worst_ip = max(counts,key=counts.get)
    print ('Most failures:', worst_ip, counts[worst_ip])
