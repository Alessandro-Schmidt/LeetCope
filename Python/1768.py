"""
1768. Merge Strings Alternately
You are given two strings word1 and word2. 
Merge the strings by adding letters in alternating order, 
starting with word1. If a string is longer than the other, 
append the additional letters onto the end of the merged string.
"""

def mergeAlternately(word1: str, word2: str):
    j, i = 0, 0
    res = []
    while i < len(word1) and j< len(word2):
        res.append(word1[i])
        res.append(word2[j])
        i+=1
        j+=1
    res.append(word1[i:])
    res.append(word2[j:])
    return "".join(res)