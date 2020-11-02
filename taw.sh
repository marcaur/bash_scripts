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
WRKWEEK=52-$((VT))
HRYEAR=$((WRKHR*WRKWEEK))


# DAYS A WEEK SPENT WORKING
# INCLUDE CONSTRAINT OF 7 DAYS
#read -p "How many days a week do you work?" DYWEEK
# VACATION TO BE SUBTRACTED FROM TOTAL TIME

# LENGTH OF TIME YOU HAVE  BEEN WORKING
#read -p "How long have you been working? (in years)" SPAN



#echo -e "You have been working for $SPAN years"
echo -e "You have spent $HRYEAR hours at work in the past year"
