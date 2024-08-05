echo hello bash
echo hello bash > stdout.txt
echo hello bash >> stdout.txt
echo hello bash > stdout.txt
> stdout.txt 
abc > stdout.txt 
bad_command
bad_command > stderr.txt
bad_command 2> stderr.txt
bad_command 2>> stderr.txt
echo hello bash > stdout.txt
echo hello bash 1> stdout.txt
read NAME
echo $NAME
echo $NAME > stdout.txt 
echo freeCodeCamp > name.txt
read NAME > name.txt
read NAME < name.txt
echo $NAME
read NAME < name.txt
echo $NAME
read NAME < name.txt
echo $NAME
read NAME NAME2 NAME 3< name.txt
echo $NAME $NAME2
read NAME NAME2 NAME3 < name.txt
echo $NAME $NAME2
echo abc | read NAME
echo my name | read NAME
echo $NAME
echo 'my name' | read NAME
echo $NAME
echo name | read NAME
echo $NAME
cat
cat name.txt
cat read name.txt
cat \< name.txt
cat < name.txt
cat
cat < name.txt
echo abc | cat
echo 'my name' | read NAME
echo $NAME
touch script.sh
chmod +x s
chmod +x script.sh 
./script.sh 
./script.sh | abc
echo abc | ./script.sh 
echo def | ./script.sh 
echo def | read ABC
echo ABC
echo $ABC
echo def | read ABC 2> stderr.txt
echo def | ./script.sh 2> stderr.txt 
echo def | ./script.sh 2> stderr.txt  > stdout.txt 
echo def < ./script.sh 2> stderr.txt  > stdout.txt 
read def < ./script.sh 
echo $def
echo def | ./script.sh 2> stderr.txt  > stdout.txt 
echo def | name.txt
echo def | ./name.txt
chmod +x name.txt 
echo def | ./name.txt
./script.sh < name.txt 
./script.sh < name.txt ?> stderr.txt > stdout.txt 
./script.sh < name.txt 2> stderr.txt > stdout.txttxt 
./script.sh < name.txt 2> stdout.txt > stdout.txttxt 
./script.sh < name.txt 2> stderr.txt > stdout.txttxt 
./script.sh < name.txt 2> stderr.txt > stdout.txt
./script.sh < name.txt 2> stderr.txt
./script.sh < name.txt ?> stderr.txt > stdout.txt 
./script.sh < name.txt 2> stderr.txt > stdout.txt 
./script.sh < name.txt 2> stderr.txt > stdout.txt 
./script.sh < name.txt 2> stderr.txt > stdout.txt 
./script.sh < name.txt 2> stderr.txt > stdout.txt
./script.sh < name.txt 2> stderr.txt > stdout.txt
cat kitty_ipsum_
cat kitty_ipsum_1.txt 
cat kitty_ipsum_2
cat kitty_ipsum_2.txt 
wc kitty_ipsum_1.txt 
man wc
wc kitty_ipsum_1.txt -l
wc kitty_ipsum_1.txt -w
wc kitty_ipsum_1.txt -b
man wc
wc kitty_ipsum_1.txt -c
man wc
wc kitty_ipsum_1.txt -m
wc kitty_ipsum_1.txt
wc | cat
cat | wc kitty_ipsum_1.txt 
wc kitty_ipsum_1.txt | cat
cat kitty_ipsum_1.txt | wc
cat kitty_ipsum_1.txt > wc
cawc < t kitty_ipsum_1.txt
cawc < t kitty_ipsum_1.txt
wc < cat kitty_ipsum_1.txt
wc < cat kitty_ipsum_1.txt 
wc < kitty_ipsum_1.txt 
echo ~~ kitty_ipsum_1.txt info ~~ > kitty_info.txt
echo '~~ kitty_ipsum_1.txt info ~~' > kitty_info.txt
man echo
q
echo -e "\nNumber of lines:" >> kitty_info.txt 
cat kitty_ipsum_1.txt | wc -l
cat kitty_ipsum_1.txt | wc -l >> kitty_info.txt 
echo -e "\nNumber of words:"
echo -e "\nNumber of words:" >> kitty_info.txt 
cat kitty_ipsum_1.txt | wc -w >> kitty_info.txt 
echo -e "\nNumber of characters:" >> kitty_info.txt 
cat kitty_ipsum_1.txt | wc -n >> kitty_info.txt 
man wc
cat kitty_ipsum_1.txt | wc -m >> kitty_info.txt 
wc -m < kitty_ipsum_1.txt >> kitty_info.txt 
grep meow kitty_ipsum_1.txt 
help grep
man grep
grep --color 'meow' kitty_ipsum_1.txt 
grep 'meow' kitty_ipsum_1.txt 
grep --color 'meow' kitty_ipsum_1.txt | wc -l
grep --color -n 'meow' kitty_ipsum_1.txt
grep --color -n 'meow[a-z]*' kitty_ipsum_1.txt
echo -e "\nNumber of times meow or meowzer appears:" >>  kitty_info.txt 
grep --color -n 'meow[a-z]*' kitty_ipsum_1.txt
grep --color -n 'meow[a-z]*' kitty_ipsum_1.txt
grep --color 'meow[a-z]*' kitty_ipsum_1.txt
grep --c 'meow[a-z]*' kitty_ipsum_1.txt
grep -c 'meow[a-z]*' kitty_ipsum_1.txt
man gre[
man grep
man grep
grep -c -o 'meow[a-z]*' kitty_ipsum_1.txt
grep -o 'meow[a-z]*' kitty_ipsum_1.txt
grep -o 'meow[a-z]*' kitty_ipsum_1.txt | wc -l
grep -o 'meow[a-z]*' kitty_ipsum_1.txt | wc -l > kitty_info.txt 
grep -o 'meow[a-z]*' kitty_ipsum_1.txt | wc -l >> kitty_info.txt 
echo -e "\nLines that they appear on:"
echo -e "\nLines that they appear on:" >> kitty_info.txt 
grep -n 'meow[a-z]*' kitty_ipsum_1.txt
man grep
cat name.txt 
sed 's/freeCodeCamp/2' name.txt 
sed 's/r/2' name.txt 
sed 's/r/2/' name.txt 
man sed
sed 's/free/f223/' name.txt 
sed 's/free/f233/' name.txt 
sed 's/freecodecamp/f233Cod3C@mp/' name.txt 
sed 's/freeCodeCamp/f233Cod3C@mp/' name.txt 
sed 's/freeCodeCamp/f233C)d3C@mp/' name.txt 
sed 's/freeCodeCamp/f233C0d3C@mp/' name.txt 
sed 's/freecodecamp/f233C0d3C@mp/' name.txt 
sed 's/freecodecamp/f233C0d3C@mp/' -i name.txt 
sed 's/freecodecamp/f233C0d3C@mp/i' name.txt 
sed 's/freecodecamp/f233C0d3C@mp/i' name.txt >> name.txt 
sed 's/freecodecamp/f233C0d3C@mp/i' name.txt > name.txt 
sed 's/freecodecamp/f233C0d3C@mp/i' name.txt > name.txt 
sed 's/freecodecamp/f233C0d3C@mp/i' < name.txt
sed 's/freecodecamp/f233C0d3C@mp/i' < cat name.txt 
cat name.txt | sed 's/freecodecamp/f233C0d3C@mp/i'
man grep
grep -o 'meow[a-z]*' kitty_ipsum_1.txt
grep -n 'meow[a-z]*' kitty_ipsum_1.txt
grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed '\s\[0-9]\1\'
grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed '/s/[0-9]/1/'
grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed 's/[0-9]/1/'
grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed 's/[0-9]+/1/'
man sed
man sed
grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed 's/[0-9]+/1/' -r
grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed 's/([0-9]+)/1/' -r
grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed 's/([0-9]+)/\1/' -r
grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed 's/([0-9]+).*/\1/' -r
grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed 's/([0-9]+).*/\1/' -r >> kitty_info.txt 
man sed
grep --color 'cat[a-z]*' kitty_ipsum_1.txt
echo -e "\nNumber of times cat, cats, or catnip appears:" >> kitty_info.txt 
grep --color 'cat[a-z]*' kitty_ipsum_1.txt
grep -n 'cat[a-z]*' kitty_ipsum_1.txt
grep -n --color 'cat[a-z]*' kitty_ipsum_1.txt
grep -o 'cat[a-z]*' kitty_ipsum_1.txt
grep -o 'cat[a-z]*' kitty_ipsum_1.txt | wc -l
grep -o 'cat[a-z]*' kitty_ipsum_1.txt | wc -l >> kitty_info.txt 
echo -e "\nLines that they appear on:"
echo -e "\nLines that they appear on:" >> kitty_info.txt 
grep -n 'cat' kitty_ipsum_1.txt
grep -n 'cat[a-z]*' kitty_ipsum_1.txt
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed 's/([0-9]+).*/\1/''
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed 's/([0-9]+).*/\1/'
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed 's/([0-9]+).*/\1/'
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed 's/([0-9]+).*/\1/'
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed -e 's/([0-9]+).*/\1/'
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed -E 's/([0-9]+).*/\1/'
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed -E 's/([0-9]+).*/\1/' >> kitty_info.txt 
echo -e '\n~~ kitty_ipsum_2.txt info ~~' >> kitty_info.txt 
echo -e '\n\n~~ kitty_ipsum_2.txt info ~~' >> kitty_info.txt 
echo -e '\nNumber of lines:' >> kitty_info.txt 
cat kitty_ipsum_2.txt | wc -l
cat kitty_ipsum_2.txt | wc -l >> kitty_info.txt 
echo -e '\nNumber of words:' >> kitty_info.txt 
man wc
wc -w kitty_ipsum_2.txt 
wc -w < cat kitty_ipsum_2.txt >> kitty_info.txt 
wc -w < cat kitty_ipsum_2.txt
cat kitty_ipsum_2.txt
wc -w < cat kitty_ipsum_2.txt
cat kitty_ipsum_2.txt | wc -w
cat kitty_ipsum_2.txt | wc -w << kitty_info.txt 


cat kitty_ipsum_2.txt | wc -w >> kitty_info.txt 
wc -w < cat kitty_ipsum_2.txt
wc -w < kitty_ipsum_2.txt
wc -w < kitty_ipsum_2.txt >> kitty_info.txt 
echo -e '\nNumber of characters:'
echo -e '\nNumber of characters:' >> kitty_info.txt 
wc -c < kitty_ipsum_2.txt >> kitty_info.txt 
man wc
wc -m < kitty_ipsum_2.txt >> kitty_info.txt 
grep --color meow* kitty_ipsum_2.txt 
grep --color meow[a-z]* kitty_ipsum_2.txt 
echo -e '\nNumber of times meow or meowzer appears:' >> kitty_info.txt 
grep -o --color meow[a-z]* kitty_ipsum_2.txt 
grep -o meow[a-z]* kitty_ipsum_2.txt | wc -l 
grep -o meow[a-z]* kitty_ipsum_2.txt | wc -l >> kitty_info.txt 
echo -e '\nLines that they appear on:'
echo -e '\nLines that they appear on:' >> kitty_info.txt 
grep -o meow[a-z]* kitty_ipsum_2.txt | sed -r 's/([0-9]+).*/\1/'
grep -n meow[a-z]* kitty_ipsum_2.txt | sed -r 's/([0-9]+).*/\1/'
grep -n meow[a-z]* kitty_ipsum_2.txt | sed -r 's/([0-9]+).*/\1/' >> kitty_info.txt 
grep --color cat[a-z]* kitty_ipsum_2.txt 
echo -e '\nNumber of times cat, cats, or catnip appears:' >> kitty_info.txt 
grep -o cat[a-z]* kitty_ipsum_2.txt | wc -l >> kitty_info.txt 
echo -e '\nLines that they appear on:' >> kitty_info.txt 
grep -n cat[a-z]* kitty_ipsum_2.txt | sed -r 's/([0-9]+).*/\1/' >> kitty_info.txt 
touch translate.sh
chmod +x translate.sh 
./translate.sh kitty_ipsum_1.txt 
./translate.sh < kitty_ipsum_1.txt 
translate < kitty_ipsum_1.txt 
translate | cat kitty_ipsum_1.txt 
cat kitty_ipsum_1.txt | ./translate.sh 
cat kitty_ipsum_1.txt | ./translate.sh 
translate < kitty_ipsum_1.txt 
./translate.sh kitty_ipsum_1.txt 
./translate.sh kitty_ipsum_1.txt | grep --color dogchow
grep --color catnip| ./translate.sh kitty_ipsum_1.txt | grep --color dogchow
grep --color catnip | ./translate.sh kitty_ipsum_1.txt | grep --color dogchow
./translate.sh kitty_ipsum_1.txt | grep --color catnip
./translate.sh kitty_ipsum_1.txt | grep --color dog[a-z]*
./translate.sh kitty_ipsum_1.txt | grep --color cat[a-z]*
./translate.sh kitty_ipsum_1.txt | grep --color 'dog[a-z]*|woof[a-z]*'
./translate.sh kitty_ipsum_1.txt | grep --color 'dog[a-z]*|woof[a-z]*' | grep '|'
./translate.sh kitty_ipsum_1.txt | grep --color -r 'dog[a-z]*|woof[a-z]*'
./translate.sh kitty_ipsum_1.txt | grep --color -R 'dog[a-z]*|woof[a-z]*'
./translate.sh kitty_ipsum_1.txt | grep --color -E 'dog[a-z]*|woof[a-z]*'
./translate.sh kitty_ipsum_1.txt | grep -g --color -E 'dog[a-z]*|woof[a-z]*'
man grep
man sed
man sed | grep global
man sed | grep global
man sed | grep a
man sed | grep glo
man sed | cat
clear
./translate.sh kitty_ipsum_1.txt | grep -g --color -E 'dog[a-z]*|woof[a-z]*'
./translate.sh kitty_ipsum_1.txt | grep --color -E 'dog[a-z]*|woof[a-z]*'
./translate.sh kitty_ipsum_1.txt | grep -g --color -E 'dog[a-z]*|woof[a-z]*|meow[a-z]*'
./translate.sh kitty_ipsum_1.txt | grep --color -E 'dog[a-z]*|woof[a-z]*|meow[a-z]*'
man sed | cat
./translate.sh kitty_ipsum_1.txt | grep --color -E 'dog[a-z]*|woof[a-z]*'
./translate.sh kitty_ipsum_1.txt | grep --color -E 'meow[a-z]*|cat[a-z]*'
./translate.sh kitty_ipsum_2.txt | grep --color -E 'dog[a-z]*|woof[a-z]'
./translate.sh kitty_ipsum_1.txt | grep --color -E 'meow[a-z]*|cat[a-z]*'
./translate.sh kitty_ipsum_ư.txt | grep --color -E 'meow[a-z]*|cat[a-z]*'
./translate.sh kitty_ipsum_2.txt | grep --color -E 'meow[a-z]*|cat[a-z]*'
./translate.sh kitty_ipsum_2.txt | grep --color -E 'dog[a-z]*|woof[a-z]' > dog_ipsum_1.txt
./translate.sh kitty_ipsum_1.txt > dog_ipsum_1.txt
./translate.sh kitty_ipsum_1.txt > doggy_ipsum_1.txt
cat doggy_ipsum_1.txt 
diff kitty_ipsum_1.txt doggy_ipsum_1.txt 
man diff
man diff | cat
man diff | grep color
diff kitty_ipsum_1.txt doggy_ipsum_1.txt --color
./translate.sh kitty_ipsum_2.txt > doggy_ipsum_2.txt
cat doggy_ipsum_2.txt 
diff --color doggy_ipsum_2.txt 
diff doggy_ipsum_2.txt --color
man dif
man diff | grep color
diff kitty_ipsum_2 doggy_ipsum_2.txt --color
diff kitty_ipsum_2.txt doggy_ipsum_2.txt --color
