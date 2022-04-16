add = [0,1,2,3,4,5]
addc = [0,1,2,12,4,5]
addz = [0,1,2,13,4,5]
adl = [0,1,2,14,4,5]
adi = [0,1,2,15,16,17]
ndu = [0,1,2,18,19,5]
ndc = [0,1,2,12,19,5]
ndz = [0,1,2,13,19,5]
lhi = [0,1,2,20]
lw = [0,1,2,21,22,23,24]
sw = [0,1,2,21,25,26,27]
beq = [0,11,25,28,29,25,30]
jalr = [0,1,7,25,30]
jalr2 = [0,1,8,30]
jri = [0,6,25,30]
lm = [0,1,9,31,33,34] + [f'lm{i}' for i in range(8)]
sm = [0,1,9,37,25,34] +  [f'sm{i}' for i in range(8)]
inst = [add,addc, addz, adl, adi, ndu, ndc, ndz, lhi, lw, sw, beq, jalr, jalr2, jri, lm, sm]
setall = set(add)
for i in inst:
    setall = setall.union(i)
setall = list(setall)
print(setall)
statemap = [i for i in range(len(setall))]
for instruction in inst:
    for index, el in enumerate(instruction):
        for j in statemap:
            if setall[j] == el:
                instruction[index] = j
                break
for index,i in enumerate(inst):
    print(index+1,i,sep=': ',end = '\n')