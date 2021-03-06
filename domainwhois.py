import subprocess, getopt, sys

def lookUp(domainName, writeToFile):
	print "Looking up whois information for " + domainName + "..."
	try:
		shellResult = subprocess.check_output(['whois', domainName])
		filterString = 'No match for "'+domainName+'".'
		if shellResult.find(filterString) > -1 : 
			writeToFile.write(domainName+"\n")
	except:
		writeToFile.write("Exception caught for "+domainName+"\n")

def retrieveParams():
	paramsList = [0,0,0,0]
    	try:
        	opts, args = getopt.getopt(sys.argv[1:], "t:l:o:s:", ["tld=", "list=", "output=", "start="])
    	except getopt.GetoptError as err:
        	# print help information and exit:
        	print str(err) # will print something like "option -a not recognized"
        	usage()
        	sys.exit(2)
    	for o, a in opts:
        	if o in ("-t", "--tld"):
            		paramsList[0] = a
        	elif o in ("-l", "--list"):
            		paramsList[1] = a
        	elif o in ("-o", "--output"):
            		paramsList[2] = a
        	elif o in ("-s", "--start"):
            		paramsList[3] = a            
        	else:
            		assert False, "unhandled option"
	return paramsList

def main():
    	params = retrieveParams()
    	tld = params[0]
    	wordsList = params[1]
    	outputFile = params[2]
    	startsWith = params[3]
    
	tld = tld.upper()
	writeToFile = open(outputFile,'a')
	writeToFile.write("\nAvailable domains:\n")

	if(startsWith != None):
		dictionary = subprocess.check_output(['grep', '^'+startsWith, wordsList]).split('\n')
		print "Only words that start with",startsWith
	else:
		dictionary = open(wordsList)

	for line in dictionary:
		englishWord = line.lstrip().rstrip()
		domainName = englishWord.upper() + '.' + tld
		lookUp(domainName, writeToFile)
			
if __name__ == '__main__':
	main()
