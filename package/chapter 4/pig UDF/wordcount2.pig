REGISTER /home/hadoop/pig/wcudfs.jar ;

DEFINE Lower wcudfs.Lower() ; 
DEFINE CleanWS wcudfs.CleanWS() ; 

-- get raw line data from file

rlines = load '/user/hadoop/pig/10031.txt' AS (rline:chararray);  

-- filter for empty lines

clines = FILTER rlines BY SIZE(rline) > 0 ; 

-- get list of words 

words = foreach clines generate flatten(TOKENIZE(CleanWS( (chararray) $0  ))) as word ; 

-- group the words by word value 

gword = group words by word ; 

-- create a word count

wcount = foreach gword generate  group, COUNT(words) ;

-- store the word count

store wcount into '/user/hadoop/pig/wc_result1' ;
