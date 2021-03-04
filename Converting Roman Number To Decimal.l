def RomanToNumerals(s):
    value={
        'M': 1000,
        'D': 500,
        'C': 100,
        'L': 50,
        'X': 10,
        'V': 5,
        'I': 1
    }
    n=len(s)
    res=0
    p=0
    for i in range(n-1,-1,-1):
        if (value[s[i]] >= p):
            res+=value[s[i]]
        else:
            res-=value[s[i]]
        p=value[s[i]]
    return res
s=input()
print(RomanToNumerals(s))
        
