cd /opt/lampp/htdocs/domainWhois
python domainwhois.py -t com -l twoletters.txt -o ll_com.txt
if [ -s ll_com.txt ]; then cat ll_com.txt | mail -s "LL.COM" "ralobba@gmail.com"; fi
python domainwhois.py -t com -l tla.txt -o lll_com.txt
if [ -s lll_com.txt ]; then cat lll_com.txt | mail -s "LLL.COM" "ralobba@gmail.com"; fi
python domainwhois.py -t com -l numList.txt -o num_com.txt
if [ -s num_com.txt ]; then cat num_com.txt | mail -s "NNNN.COM" "ralobba@gmail.com"; fi
python domainwhois.py -t com -l fourLetter.txt -o llll_com.txt
if [ -s llll_com.txt ]; then cat llll_com.txt | mail -s "LLLL.COM" "ralobba@gmail.com"; fi
python domainwhois.py -t com -l five_letter.txt -o lllll_com.txt
if [ -s lllll_com.txt ]; then cat lllll_com.txt | mail -s "LLLLL.COM" "ralobba@gmail.com"; fi
python domainwhois.py -t com -l cvcv.txt -o cvcv_com.txt
if [ -s cvcv_com.txt ]; then cat cvcv_com.txt | mail -s "CVCV.COM" "ralobba@gmail.com"; fi

python domainwhois.py -t net -l twoletters.txt -o ll_net.txt
if [ -s ll_net.txt ]; then cat ll_net.txt | mail -s "LL.NET" "ralobba@gmail.com"; fi
python domainwhois.py -t net -l tla.txt -o lll_net.txt
if [ -s lll_net.txt ]; then cat lll_net.txt | mail -s "LLL.NET" "ralobba@gmail.com"; fi
python domainwhois.py -t net -l numList.txt -o num_net.txt
if [ -s num_net.txt ]; then cat num_net.txt | mail -s "NNNN.NET" "ralobba@gmail.com"; fi
python domainwhois.py -t net -l fourLetter.txt -o llll_net.txt
if [ -s llll_net.txt ]; then cat llll_net.txt | mail -s "LLLL.NET" "ralobba@gmail.com"; fi
python domainwhois.py -t net -l five_letter.txt -o lllll_net.txt
if [ -s lllll_net.txt ]; then cat lllll_net.txt | mail -s "LLLLL.NET" "ralobba@gmail.com"; fi
python domainwhois.py -t net -l cvcv.txt -o cvcv_net.txt
if [ -s cvcv_net.txt ]; then cat cvcv_net.txt | mail -s "CVCV.NET" "ralobba@gmail.com"; fi

python domainwhois.py -t co -l twoletters.txt -o ll_co.txt
if [ -s ll_co.txt ]; then cat ll_co.txt | mail -s "LL.CO" "ralobba@gmail.com"; fi
python domainwhois.py -t co -l tla.txt -o lll_co.txt
if [ -s lll_co.txt ]; then cat lll_co.txt | mail -s "LLL.CO" "ralobba@gmail.com"; fi
python domainwhois.py -t co -l numList.txt -o num_co.txt
if [ -s num_co.txt ]; then cat num_co.txt | mail -s "NNNN.CO" "ralobba@gmail.com"; fi
python domainwhois.py -t co -l fourLetter.txt -o llll_co.txt
if [ -s llll_co.txt ]; then cat llll_co.txt | mail -s "LLLL.CO" "ralobba@gmail.com"; fi
python domainwhois.py -t co -l five_letter.txt -o lllll_co.txt
if [ -s lllll_co.txt ]; then cat lllll_co.txt | mail -s "LLLLL.CO" "ralobba@gmail.com"; fi
python domainwhois.py -t co -l cvcv.txt -o cvcv_co.txt
if [ -s cvcv_co.txt ]; then cat cvcv_co.txt | mail -s "CVCV.CO" "ralobba@gmail.com"; fi