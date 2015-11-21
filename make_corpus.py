from textblob import TextBlob as tb
import psycopg2
from nltk.corpus import stopwords


#takes list of tuples, returns dictionary of textblobs
def makeBlobDict(lst):
	sw = stopwords.words("english")
	bl = {}
	for t in lst:
		bl[t[0]] = preprocess(t[1],sw)
	return bl

def preprocess(doc, stopwordList):
	blob = tb(doc)
	blobNoStop = [w for w in blob if w not in stopwordList]
	stems = blobNoStop
	for i in range(len(stems)):
		stems[i] = PorterStemmer().stem_word(stems[i])
	

