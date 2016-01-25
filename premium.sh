cd /opt/lampp/htdocs/domainWhois
python domainwhois.py -t com -l chinese_names.txt -o chinese_names_com.txt
if [ -s chinese_names_com.txt ]; then cat chinese_names_com.txt | mail -s "CHINESENAMES.COM" "ralobba@gmail.com"; fi
rm chinese_names_com.txt
python domainwhois.py -t com -l female_chinese_names.txt -o female_chinese_names_com.txt
if [ -s female_chinese_names_com.txt ]; then cat female_chinese_names_com.txt | mail -s "FEMALECHINESENAMES.COM" "ralobba@gmail.com"; fi
rm female_chinese_names_com.txt
python domainwhois.py -t com -l twoletters.txt -o ll_com.txt
if [ -s ll_com.txt ]; then cat ll_com.txt | mail -s "LL.COM" "ralobba@gmail.com"; fi
rm ll_com.txt
python domainwhois.py -t com -l tla.txt -o lll_com.txt
if [ -s lll_com.txt ]; then cat lll_com.txt | mail -s "LLL.COM" "ralobba@gmail.com"; fi
rm lll_com.txt
python domainwhois.py -t com -l numList.txt -o num_com.txt
if [ -s num_com.txt ]; then cat num_com.txt | mail -s "NNNN.COM" "ralobba@gmail.com"; fi
rm num_com.txt
python domainwhois.py -t com -l fourLetter.txt -o llll_com.txt
if [ -s llll_com.txt ]; then cat llll_com.txt | mail -s "LLLL.COM" "ralobba@gmail.com"; fi
rm llll_com.txt
python domainwhois.py -t com -l fiveletterconsonants.txt -o ccccc_com.txt
if [ -s ccccc_com.txt ]; then cat ccccc_com.txt | mail -s "CCCCC.COM" "ralobba@gmail.com"; fi
rm ccccc_com.txt
python domainwhois.py -t com -l five_letter.txt -o lllll_com.txt
if [ -s lllll_com.txt ]; then cat lllll_com.txt | mail -s "LLLLL.COM" "ralobba@gmail.com"; fi
rm lllll_com.txt
python domainwhois.py -t com -l cvcv.txt -o cvcv_com.txt
if [ -s cvcv_com.txt ]; then cat cvcv_com.txt | mail -s "CVCV.COM" "ralobba@gmail.com"; fi
rm cvcv_com.txt
python domainwhois.py -t net -l cccc.txt -o cccc_net.txt
if [ -s cccc_net.txt ]; then cat cccc_net.txt | mail -s "CCCC.NET" "ralobba@gmail.com"; fi
rm cccc_net.txt
python domainwhois.py -t com -l 6to10.txt -o 6to10_com.txt
if [ -s 6to10_com.txt ]; then cat 6to10_com.txt | mail -s "6to10.COM" "ralobba@gmail.com"; fi
rm 6to10_com.txt
