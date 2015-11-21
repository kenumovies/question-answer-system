import math
from textblob import TextBlob as tb

#make document list from query


def tf(word, blob):
	return float(blob.words.count(word)) / len(blob.words)

def n_containing(word, bloblist):
	return float(sum(1 for blob in bloblist if word in blob))

def idf(word, bloblist):
    return float(math.log(len(bloblist) / (1 + n_containing(word, bloblist))))

def tfidf(word, blob, bloblist):
    return float(tf(word, blob) * idf(word, bloblist))

