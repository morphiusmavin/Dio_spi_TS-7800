if [[ -z "${CROSS_COMPILE}" ]]; then
  echo "run setARMpath.sh"
  exit 1
fi

if [ -f ~/lcd_func.zip ]
then

unzip -o ~/lcd_func.zip
make -f make_dio72  &> out.txt

if grep -q error out.txt
 then
  find2 error out.txt
  exit 1
fi

if grep -q undefined out.txt
 then
  find2 undefined out.txt
  exit 1
fi
cat out.txt
echo "ftp for dio_slave"
ftp 192.168.88.145
make -f make_dio72 clean

make -f make_lcd78  &> out.txt

if grep -q error out.txt
 then
  find2 error out.txt
  exit 1
fi

if grep -q undefined out.txt
 then
  find2 undefined out.txt
  exit 1
fi
cat out.txt
echo "ftp for dio_master"
ftp 192.168.88.146
make -f make_lcd78 clean
rm ~/lcd_func.zip
else
echo "lcd_func.zip not found"
fi
