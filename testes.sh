#!/bin/bash
if [ "$1" == "-cl" ]; then
   rm *.txt *.pdf
   else
      for ((i = 0; i < 10; i++)) do
         if [ "$1" == "-ja" ]; then
            java projeto 0 10000
         elif [ "$1" == "-jb" ]; then
            java projeto 1 10000
         elif [ "$1" == "-jc" ]; then
            java projeto 2 10000
         elif [ "$1" == "-op" ]; then
            java projeto 3 10000
   fi
   done > "$2".txt
   R -e 'x <- scan("'"$2"'.txt"); summary(x); var(x); sd(x); hist(x, col="lightblue",border="white"); boxplot(x) '
   echo "Would you like to see the pdf? (y/n)"
   read DECISION
   if [ "$DECISION" == "y" ]; then
      evince *.pdf &
   fi
fi
echo "Everything is done, Mr(s). "$USER""
