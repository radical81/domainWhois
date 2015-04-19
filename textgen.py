import string

alphabetstr = string.ascii_lowercase
numberstr = string.digits

alphabet = list(alphabetstr)
numbers = list(numberstr)

print alphabet
print numbers


for a in alphabet:
	for b in alphabet:
		for c in alphabet:
			for d in alphabet:
				print a+b+c+d