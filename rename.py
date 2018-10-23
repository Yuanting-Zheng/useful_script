import sys
import os
L = []
for root, dirs, files in os.walk(".", topdown=False):
    for name in files:
        L.append(name)

print(L)

for one in L:
    if '(paired)' in one:
        ex = one[:10]+'_1\ \(paired\).clc'
        lx = './'+one[:10]+'.clc'
        command = 'mv ./'+ ex + ' '+ lx
        print(lx)
        print(command)
        os.system(command)
