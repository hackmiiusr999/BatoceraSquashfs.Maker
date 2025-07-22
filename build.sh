#!/bin/bash

#Script made by hackmiiusr999!!!

#Made for Linux. should work on all distros

#Write to log:

date >> log.txt


#Clear for clean terminal

clear

#Check to see if in root. it can main issues
echo "checking for Root..."

sleep 1

#Write to log:
date >> log.txt

echo "check for Root.
" >> log.txt

if [ "$EUID" -ne 0 ]; then



echo "No root. Great!"


date >> log.txt

echo "no root.
" >> log.txt

sleep 2

#clear again

clear

#begin script.

sleep 3



 while true; do

      read -rp " Do You want:
      W= Wine Version[for Batocera only!]
      R= Regular squashfs
      E= Exit out of the Menu.
      [Choose]: " yn

       case $yn in

#-------------------batocera Option-------------------

           [wW])


           date >> log.txt

           #Write to log:
           echo "user choose Wine [For batocera]
           " >> log.txt

               echo "Continuing..."
     sleep 1

  clear

echo "Making Game..."

date >> log.txt

mksquashfs &>> log.txt

mksquashfs "Update" "GameForWine.wsquashfs" &>> log.txt


if [ $? -ne 0 ]; then
clear

  #Making Game for batocera failed. Output the error on why it failed in the first place in details.
  echo

  clear

  echo "Failed, check the log for details."

date >> log.txt

  #write error to log:
  echo "

  Failed, could be due to not having the 'Update' DIR not set properly. make sure this exec is in the same dir as the 'Update' i. like this:
  -------------
  |   Update
  |
  |   build.sh
  -------------

  also, make Sure the 'U' is Uppercase in 'Update' or it will fail.
" >> log.txt


  echo "Failure." >> log.txt


   # Exit with an error code

   exit
fi
sleep 5

clear

echo "Finshed!"

date >> log.txt

echo "Finshed making game for User. exit.

" >> log.txt

               break # Exit the loop
               ;;









#-------------------Regular Option-------------------
           [rR])

          echo "Continuing..."

          cd ./
sleep 1

  clear

echo "Making Compressed Sqashfs..."

sleep 2

date >> log.txt

mksquashfs &>> log.txt

mksquashfs "makesquash" "Compressed.squashfs" &>> log.txt

if [ $? -ne 0 ]; then
clear

  # Command script failed.  the error details.
  echo "Failed, check the log for details."


#Write error to log:

date >> log.txt

   echo "

   Failed, could be due to not having the 'makesquash' dir not set properly. make sure this exec is in the same dir as the 'makesquash'. like this:

  -------------
  |   makesquash
  |
  |   build.sh
  -------------

  Make Sure the 'makesquash' folder is all lowercase or it will fail.

  "  >> log.txt

  sleep 3
  exit

fi

   echo "Finished!"

date >> log.txt

   echo "done" >> log.txt

   #Close Yourself now!

   exit

  break
  ;;


#-------------------Exit Option-------------------

               [eE])
    echo "ok"

    date >> log.txt

    echo "User left the script." >> log.txt
          exit
          break
          ;;

           *)
               echo "Invalid Option lil Bro. enter w, r or e."

               sleep 1

               clear
               ;;
       esac
   done

fi
 echo "Warning Root can cause issues! recommended to run in basic User Mode!" >&2

 sleep 0.5




while true; do
    read -p "Do you wish to Continue on with the script?[y/n]:" yn
    case $yn in
        [Yy]* ) echo "ok"


        sleep 3

        clear

        sleep 1

        echo "logs cannot be written. everything will be showen"

        sleep 2

        break;;


        [Nn]* )

        echo "try in User next time!"

        sleep 2

        exit

        break;;

        * )

        echo "Please answer yes or no.";;
    esac
done



#begin script.

 while true; do

      read -rp " Do You want:
      W= Wine Version[for Batocera only!]
      R= Regular squashfs
      E= Exit out of the Menu.
      [Choose]: " yn

       case $yn in

#-------------------batocera Option-------------------

           [wW])

               echo "Continuing..."
          cd ./

echo "Making Game..."

sleep 2

mksquashfs "Update" "GameForWine.wsquashfs"


if [ $? -ne 0 ]; then
clear

  #Making Game for batocera failed. Output the error on why it failed in the first place in details.
  echo

  clear

  "Failed, could be due to not having the 'Update' dir not set properly. [OR BEING IN ROOT] make sure this exec is in the same dir as the 'Update'. like this:
  |   Update
  |
  |   build.sh"

   # Exit with an error code

   sleep 1

   exit

fi
sleep 5

clear

echo "Finshed!"

sleep 2

exit



               break
               ;;

#-------------------Regular Option-------------------
           [rR])
          cd ./

echo "Making Compressed Sqashfs..."

sleep 2

mksquashfs "makesquash" "Compressed.squashfs"

if [ $? -ne 0 ]; then
clear

  # Command script failed.  the error details.
  echo "Failed, could be due to not having the 'makesquash' dir not set properly. [OR BEING IN ROOT] make sure this exec is in the same dir as the 'makesquash'. like this:
  |   makesquash
  |
  |   build.sh"


  sleeo 3

  exit

   fi
  clear

   echo "Finished!"

  sleep 1

  exit
          break
          ;;



#-------------------Exit Option-------------------

               [eE])
         echo "Good, Make Sure to be in User Mode. Not root."

         sleep 0.5

          exit
          break
          ;;

           *)
               echo "Invalid Option lil Bro. enter w, r or e."
               ;;
       esac
   done







if [ $? -ne 0 ]; then
  # Bro
  echo "How Did You manage to do this? this is outside the script!!!"
# Exit with Nothing
fi





