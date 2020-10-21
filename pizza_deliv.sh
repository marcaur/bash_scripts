#! /usr/bin/bash

# PIZZA SCRIPT
# EACH PERSON EATS TWO SLICES
# GIVEN AN ARBITRARY AMOUNT OF PEOPLE,
# HOW MANY BOXES OF PIZZA WILL YOU NEED ?
SMALL_BOX=8
MD_BOX=12
LG_BOX=16
read -p "how many people will be eating?:" NUM_PPL
echo -e "Ok so $NUM_PPL will be eating. What size pizza would you like? "
select BOX_SIZE in Small Medium Large
do
  case $BOX_SIZE in
    Small )
      echo "You have a small box"
      echo "A small box has $SMALL_BOX slices"
      SLICES=$SMALL_BOX
      break
      ;;
    Medium )
      echo "You have a medium box"
      echo "A medium box has $MD_BOX slices"
      SLICES=$MD_BOX
      break
      ;;
    Large )
      echo "You have a large box"
      echo "A large box has $LG_BOX slices"
      SLICES=$LG_BOX
      break
      ;;
  esac
done

# CHECKS IF THERE IS NOT AN EQUAL AMOUNT OF PIZZA
# ADDS ANOTHER BOX IF THERE ARE NOT AT LEAST TWO SLICES FOR EACH PERSON
PIZZA_DELIV=$((((NUM_PPL)*2)/SLICES))
if [ $((((NUM_PPL)*2)%SLICES)) -ge 1 ]
then
  echo -e "You are going to need $(( PIZZA_DELIV + 1 )) boxes\nAnd you may still have some left over"
else
  echo "You are going to need exactly $PIZZA_DELIV boxes of pizza"
fi


# verifies if user wants to continue
: '
read -p "Do you want this $BOX_SIZE pizza?" VERFY
do
  case $VERFY in
    [yY] | [yY][eE][sS])
      echo "Ok"
      continue
      ;;
    [nN] | [nN][oO])
      echo "Ok bye"
      break
  esac
done
'
