-- get raw line data from file

rlines = load '/user/hadoop/pig/10031.txt';  

-- get list of words

words = foreach rlines generate  flatten(TOKENIZE((chararray)$0)) as word ; 

-- group the words by word value

gwords = group words by word ; 

-- create a word count

wcount = foreach gwords generate  group, COUNT(words) ; 

-- store the word count

store wcount into '/user/hadoop/pig/wc_result1' ; 
