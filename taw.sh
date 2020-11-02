#! /usr/bin/bash

# This script will calculate how much of your life you
# have spent at work. This will not account for every variable
# as each person's situation is unique. However, this will be a
# very fair estimate of the time you have spent exclusively
# at work.
# This is to spread awareness to everyone to value their
# personal time more.

# Afterwards, display links to entrepreneurship, mental helth, etc

# PART ONE
# COLLECT PERSONAL INFO AND STORE INTO VARIABLES

# HOW OLD ARE YOU RIGHT NOW? (AGE)
# HOW MANY HOURS SPENT AT WORK ? (WRKHR)
# HOW MANY DAYS A WEEK DO YOU WORK? (DYWEEK)
# HOW LONG HAVE YOU BEEN WORKING? (SPAN)
# ANY PREVIOUS JOB? (PSTWRK)
# (REPEAT WRKHR & DYWEEK)

#CALCULATE AMOUNT OF DAYS, HOURS, AND WEEKS

#read -p "How old are you?" AGE

# AMOUNT OF HOURS A YEAR SPENT WORKING
# account for non-integer input values
read -p "How many hours do you spend at work each week?" WRKHR
read -p "How much vacation time do you get a year?(weeks)" VT
WRKWEEK=52-$((VT)) #AMOUNT OF WEEKS YOU WORK IN A YEAR W/VACAY
HRYEAR=$((WRKHR*WRKWEEK)) #TOTAL AMOUNT OF HOURS SPENT AT WORK IN A YEAR
echo -e "You have spent $HRYEAR hours at work over the last $SPAN year"
# if $SPAN > 1:
#   year+='s'




# AMOUNT OF DAYS A YEAR SPENT WORKING
# INCLUDE CONSTRAINT OF 7 DAYS
COUNTME=0
while [ $COUNTME -lt 1 ]; do
  read -p "How many days a week do you work? " DYWEEK
  if (($DYWEEK <= 7)); then
    COUNTME+=1
  elif (($DYWEEK > 7)); then
    echo "Please enter a number between 1-7 "
    continue
  fi
done
echo "You spend $DYWEEK days at work a week"

# VACATION TO BE SUBTRACTED FROM TOTAL TIME
VDAY=$VT*7 # HOW MANY DAYS OFF DO YOU GET A YEAR
DYYEAR=$((DYWEEK*52-VDAY))
echo "You spend $DYYEAR days a year at work"

#LENGTH OF TIME YOU HAVE  BEEN WORKING
#read -p "How long have you been working? (in years)" SPAN



#echo -e "You have been working for $SPAN years"
