#pip install unirest
import unirest
import json
import sys

tld = sys.argv[1]
wordsList = sys.argv[2]
dictionary = open(wordsList)
domainArray = []
for line in dictionary:
	cleanLine = line.lstrip().rstrip()
	domainArray.append(cleanLine+'.'+tld)
	
for domain in domainArray:
	try:
		response = unirest.get("https://jsonwhois.com/api/v1/whois",

   		headers={
      "Accept": "application/json",
        "Authorization": "Token token=e21e5317e367adf0973a5f3fd0e89a08"
      },

   		params={
       "domain": domain
    	})
		jsonStr = json.dumps(response.body) # The parsed response
		jsonRslt = json.loads(jsonStr)
		if jsonRslt['status'] != 'registered':
			print jsonStr

    	except:
    		print "Error calling service"
    	
