import datetime, subprocess, getopt, sys, re

def isRedemption(expDate):
	expDate = datetime.datetime.strptime(expDate.lower(), '%d-%b-%Y')
	today = datetime.datetime.today()
	margin = datetime.timedelta(days = 40)
	if today - expDate >= margin:
		return True

def generateDropDate(expDate):
	expDate = datetime.datetime.strptime(expDate, '%d-%b-%Y')
	margin = datetime.timedelta(days = 75)
	dropDate = expDate + margin
	return dropDate.strftime("%d %b %Y")
	
def lookUp(domainName, writeToFile):
	print "Looking up whois information for " + domainName + "..."
	try:
		proc = subprocess.Popen(['whois', domainName], stdout=subprocess.PIPE)
		shellResult = proc.stdout.read()
		if "Expiration Date" in shellResult:
			m = re.search('Expiration Date: (.+)', shellResult)
			if m:
				expDate = m.group(1)
				if isRedemption(expDate) == True:
					writeToFile.write(domainName + " expired on "+ expDate + " DROPS on: " + generateDropDate(expDate) + "\n")
				
		filterString = ['No match for "'+domainName+'".','Domain not found.','Not found:','NOT FOUND']
		if any(x in shellResult for x in filterString) : 
			writeToFile.write(domainName + "\n")
	except subprocess.CalledProcessError:
		writeToFile.write("Exception caught for "+domainName+"\n")

def retrieveParams():
	paramsList = [None,None,None,None,None,None]
    	try:
        	opts, args = getopt.getopt(sys.argv[1:], "t:l:o:s:b:e:", ["tld=", "list=", "output=", "start=", "begin=", "end="])
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
        	elif o in ("-b", "--begin"):
            		paramsList[4] = a            
        	elif o in ("-e", "--end"):
            		paramsList[5] = a                        		
        	else:
            		assert False, "unhandled option"
	return paramsList

def main():
    	params = retrieveParams()
    	tld = params[0]
    	wordsList = params[1]
    	outputFile = params[2]
    	startsWith = params[3]
    	beginCat = params[4]
    	endCat = params[5]
    	prefix = ''
    	suffix = ''
    	if(beginCat != None):
    		prefix = beginCat
    	if(endCat != None):
    		suffix = endCat
	tld = tld.upper()
	writeToFile = open(outputFile,'a')

	if(startsWith != None):
		dictionary = subprocess.check_output(['grep', '^'+startsWith, wordsList]).split('\n')
		print "Only words that start with",startsWith
	else:
		dictionary = open(wordsList)

	for line in dictionary:
		englishWord = line.lstrip().rstrip()
		
		domainName = prefix.upper() + englishWord.upper() + suffix.upper() + '.' + tld
		lookUp(domainName, writeToFile)
			
if __name__ == '__main__':
	main()
