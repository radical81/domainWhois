import urllib2, getopt, sys

def retrieveParams():
	paramsList = [None]
    	try:
        	opts, args = getopt.getopt(sys.argv[1:], "d:", ["domain="])
    	except getopt.GetoptError as err:
        	# print help information and exit:
        	print str(err) # will print something like "option -a not recognized"
        	usage()
        	sys.exit(2)
    	for o, a in opts:
        	if o in ("-d", "--domain"):
            		paramsList[0] = a
        	else:
            		assert False, "unhandled option"
	return paramsList

def main():
	print 'hi'
	params = retrieveParams()
	domainName = params[0]
	print domainName
	f = urllib2.urlopen('https://api.dynadot.com/api2.html?key=J8X8TN6d9RI7df8ql7C6oK8M6P9UYx9F8V8Z7U6z&command=register&domain='+domainName+'&duration=1')
	print f.read(100)

if __name__ == '__main__':
	main()