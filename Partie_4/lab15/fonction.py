# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.

t=[4,9,10,11,12,15,12,9,0,30]

def maxim(t):
    max=t[0]
    for i in t:
        if i>=max:
            max=i
        return max
def minim(t):
    min=t[0]
    for i in t:
        if i <=min:
            min=i
        return min


def variance(t):

    #calculate the mean
    sum =0
    M=0
    var0=0
    var=0
    n = len(t)
    for i in range(n):
        sum = sum + t[i]

    M=sum/n
    for i in t:
        var0=((i-M)*(i-M))/n
        var=var0+var

    return var
# Press the green button in the gutter to run the script.
print("le min est",min(t),"le max est",max(t),"la variance est",variance(t))
