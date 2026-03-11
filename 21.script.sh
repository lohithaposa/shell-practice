COUNTRY=INDIA

echo "I am in: $COUNTRY"
echo "PID of SCRIPT-1: $$"

#sh 22.script2.sh
#process 2 cannnot access process1
# o/p: I am in: INDIA
# PID of SCRIPT-1: 27599
# I am in:
# PID of SCRIPT-2: 27600


source ./22.script2.sh