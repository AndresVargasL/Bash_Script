#!/bin/bash
#Programa que permite manejar las utilidades de postgres
#Autor: Sergio A. Vargas


menu=$(cat << EOF
1) delete my computer
2) delete your moms' computer
3) delete the internet
4) exit
5) clear screen
EOF
)

while :; do
    echo "$menu"
    echo ""
    read -p "Option: " u_option

    case "$u_option" in

        1|"delete my computer")
            u_os=$(uname)
            echo "Deleting your computer..."
            sleep 0.2
            echo "removing your OS: $u_os"
            sleep 1s
            echo "removing personal files..."
            sleep 1s
            echo "Done!"
            echo ""
            ;;
        2|"delete your moms' computer")
            u_os=$(uname)
            echo "Deleting your moms' computer..."
            sleep 0.2
            echo "removing his/her OS: $u_os"
            sleep 1s
            echo "removing personal files..."
            sleep 1s
            echo "Done!"
            echo ""
            ;;
        3|"delete the internet")
            echo "#the password is not okay#"
            read -sp "Type the password to remove the internet: " u_password

            if [ "$u_password" == "okay" ]; then
                echo "Deleting the internet..."
                sleep 1s
                echo "deleting your dog..."
                sleep 1s
                echo "Done!"
                echo ""
            else
                echo "Incorrect password"
                echo ""
            fi
            ;;
        4|"exit")
            echo "Glad to help!"
            sleep 1s
            echo "exiting..."
            exit
            ;;
        5|clear|"clear screen")
            clear
            ;;
        *)
            echo "Sorry, command not found..."
            echo "try again"
            sleep 1s
            echo ""
            ;;
        esac
done
