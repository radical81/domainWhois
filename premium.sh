cd /opt/lampp/htdocs/domainWhois
python domainwhois.py -t com -l twoletters.txt -o ll_com.txt
python domainwhois.py -t com -l tla.txt -o lll_com.txt
python domainwhois.py -t com -l numList.txt -o num_com.txt
python domainwhois.py -t com -l fourLetter.txt -o llll_com.txt
python domainwhois.py -t com -l five_letter.txt -o lllll_com.txt
python domainwhois.py -t com -l cvcv.txt -o cvcv_com.txt

python domainwhois.py -t net -l twoletters.txt -o ll_net.txt
python domainwhois.py -t net -l tla.txt -o lll_net.txt
python domainwhois.py -t net -l numList.txt -o num_net.txt
python domainwhois.py -t net -l fourLetter.txt -o llll_net.txt
python domainwhois.py -t net -l five_letter.txt -o lllll_net.txt
python domainwhois.py -t net -l cvcv.txt -o cvcv_net.txt

python domainwhois.py -t co -l twoletters.txt -o ll_co.txt
python domainwhois.py -t co -l tla.txt -o lll_co.txt
python domainwhois.py -t co -l numList.txt -o num_co.txt
python domainwhois.py -t co -l fourLetter.txt -o llll_co.txt
python domainwhois.py -t co -l five_letter.txt -o lllll_co.txt
python domainwhois.py -t co -l cvcv.txt -o cvcv_co.txt