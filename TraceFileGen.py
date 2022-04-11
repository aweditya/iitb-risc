

import numpy as np
import random

def nand(str1, str2) :
    ans = ''
    for i in range(len(str1)) :
        if str1[i]=='1' and str2[i]=='1' :
            ans += '0'
        else :
            ans += '1'
    return ans
def xor(str1, str2) :
    ans = ''
    for i in range(len(str1)) :
        if str1[i]==str2[i] :
            ans += '1'
        else :
            ans += '0'
    return ans
#--------------------------------------------------

answer = '' # stores the final output
ans = '' 
sel = ''
for i in range(20) : # ADD : modifies both flags
    carry = '0'
    zero = '0'
    ab = ''.join(random.choices(['0','1'], k=32))
    sel = '00'
    op = bin(int(ab[:16], 2) + int(ab[16:], 2))[2:]
    if len(op)==16 :
        carry = '0'
    elif len(op) < 16 :
        carry = '0'
        op = ''.join(['0']*(16-len(op))) + op
    else :
        carry = '1'
        op = op[1:]
    if op==''.join(['0']*16) :
        zero = '1'
    ans += ab + ' ' + sel + ' '+ op + ' '+ carry + ' ' + zero + ' '+ ''.join(['1']*34)
    answer += ans + '\n'
    ans = ''
for i in range(20) : # NAND : modifies zero flag
    carry = '0'
    zero = '0'
    ab = ''.join(random.choices(['0','1'], k=32))
    sel = '01'
    op = nand(ab[:16], ab[16:])
    if op==''.join(['0']*16) :
        zero = '1'
    ans += ab + ' ' + sel + ' '+ op + ' '+ carry + ' ' + zero + ' '+ ''.join(['1']*34)
    answer += ans + '\n'
    ans = ''
for i in range(20) : # XOR : modifies zero flag
    carry = '0'
    zero = '0'
    ab = ''.join(random.choices(['0','1'], k=32))
    sel = '10'
    op = xor(ab[:16], ab[16:])
    if op==''.join(['0']*16) :
        zero = '1'
    ans += ab + ' ' + sel + ' '+ op + ' '+ carry + ' ' + zero + ' '+ ''.join(['1']*34)
    answer += ans + '\n'
    ans = ''
for i in range(20) : # NONE : modifies no flag
    carry = '0'
    zero = '0'
    ab = ''.join(random.choices(['0','1'], k=32))
    sel = '11'
    op = ab[:16]
    ans += ab + ' ' + sel + ' '+ op + ' '+ carry + ' ' + zero + ' '+ ''.join(['1']*34)
    answer += ans + '\n'
    ans = ''

# when a case doesnt modify a flag, it invariably output zero for that bit. This needs to be handled seperately.


# In[ ]:




