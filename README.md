# domainWhois
Domain lookup for availability based on a list of words

Usage:
Run with Python:

$ python domainwhois.py -t <domain tld> -l <text file to read> -o <text file to write to> -s <starts with>

For example, to look up .com domains starting with 'b' from a list of English words and write the available ones to available.txt,
$ python domainwhois.py -t com -l wordsEn.txt -o available.txt -s b