#!/bin/bash

echo -e "\t\t\t\t\tBank Of The SouthWestLands"

# Function for account opening
accountOpen() {
    while true; do
        echo -e "1. Savings Account"
        echo -e "2. Current Account"
        echo -e "3. Domiciliary Account"
        echo -e "4. Children Account"
        echo -e "5. Back To Main Menu"
        echo -n "Enter Option: "
        read accountOption

        case $accountOption in
            1)
                savingsAccount
                ;;
            2)
                currentAccount
                ;;
            3)
                domiciliaryAccount
                ;;
            4)
                childrenAccount
                ;;
            5)
                return
                ;;
            *)
                echo "Wrong Input"
                ;;
        esac
    done
}

# Function for Savings Account
savingsAccount() {
    echo -n "Full Names: "
    read input1
    echo -n "Date Of Birth (YYYY-MM-DD): "
    read input2
    echo -n "Address: "
    read input3
    echo -n "Employment: "
    read input4
    echo -n "Place Of Birth: "
    read input5
    echo -n "State Of Origin: "
    read input6
    echo -n "Mobile Number: "
    read input7

    # Calculate the age based on the input date of birth
    currentDate=$(date)
    currentYear=$(date -d "$currentDate" +%Y)
    inputYear=$(date -d "$input2" +%Y)
    age=$((currentYear - inputYear))

    # Create a file to save user information
    touch savingsAccount.txt
    echo -e "Savings Account For Mr/Mrs $input1 Created And Saved Successfully:\nFull Names: $input1\nDate Of Birth: $input2\nAge: $age\nAddress: $input3\nEmployment: $input4\nPlace Of Birth: $input5\nState Of Origin: $input6\nMobile Number: $input7" >> savingsAccount.txt

    # Copy the file to a specified directory
    cp savingsAccount.txt /C/Users/IMGN-DRGN/Desktop/ShellScript/BankDirectory/
}

# Function for Current Account (you can implement this similarly)
currentAccount() {
    echo -n "Full Names: "
    read input1
    echo -n "Date Of Birth (YYYY-MM-DD): "
    read input2
    echo -n "Address: "
    read input3
    echo -n "Employment: "
    read input4
    echo -n "Place Of Birth: "
    read input5
    echo -n "State Of Origin: "
    read input6
    echo -n "Mobile Number: "
    read input7

    # Calculate the age based on the input date of birth
    currentDate=$(date)
    currentYear=$(date -d "$currentDate" +%Y)
    inputYear=$(date -d "$input2" +%Y)
    age=$((currentYear - inputYear))

    # Create a file to save user information
    touch currentAccount.txt
    echo -e "Current Account For Mr/Mrs $input1 Created And Saved Successfully:\nFull Names: $input1\nDate Of Birth: $input2\nAge: $age\nAddress: $input3\nEmployment: $input4\nPlace Of Birth: $input5\nState Of Origin: $input6\nMobile Number: $input7" >> savingsAccount.txt

    # Copy the file to a specified directory
    cp currentAccount.txt /C/Users/IMGN-DRGN/Desktop/ShellScript/BankDirectory/
}
# Function for Domiciliary Account (you can implement this similarly)
domiciliaryAccount() {
    echo -n "Full Names: "
    read input1
    echo -n "Date Of Birth (YYYY-MM-DD): "
    read input2
    echo -n "Address: "
    read input3
    echo -n "Employment: "
    read input4
    echo -n "Place Of Birth: "
    read input5
    echo -n "State Of Origin: "
    read input6
    echo -n "Mobile Number: "
    read input7

    # Calculate the age based on the input date of birth
    currentDate=$(date)
    currentYear=$(date -d "$currentDate" +%Y)
    inputYear=$(date -d "$input2" +%Y)
    age=$((currentYear - inputYear))

    # Create a file to save user information
    touch domiciliaryAccount.txt
    echo -e "Domiciliary Account For Mr/Mrs $input1 Created And Saved Successfully:\nFull Names: $input1\nDate Of Birth: $input2\nAge: $age\nAddress: $input3\nEmployment: $input4\nPlace Of Birth: $input5\nState Of Origin: $input6\nMobile Number: $input7" >> savingsAccount.txt

    # Copy the file to a specified directory
    cp domiciliaryAccount.txt /C/Users/IMGN-DRGN/Desktop/ShellScript/BankDirectory/
}
# Function for Children Account (you can implement this similarly)
childrenAccount() {
    echo -n "Full Names: "
    read input1
    echo -n "Date Of Birth (YYYY-MM-DD): "
    read input2
    echo -n "Address: "
    read input3
    echo -n "Employment: "
    read input4
    echo -n "Place Of Birth: "
    read input5
    echo -n "State Of Origin: "
    read input6
    echo -n "Mobile Number: "
    read input7

    # Calculate the age based on the input date of birth
    currentDate=$(date)
    currentYear=$(date -d "$currentDate" +%Y)
    inputYear=$(date -d "$input2" +%Y)
    age=$((currentYear - inputYear))

    # Create a file to save user information
    touch childrenAccount.txt
    echo -e "Children Account For Mr/Mrs $input1 Created And Saved Successfully:\nFull Names: $input1\nDate Of Birth: $input2\nAge: $age\nAddress: $input3\nEmployment: $input4\nPlace Of Birth: $input5\nState Of Origin: $input6\nMobile Number: $input7" >> savingsAccount.txt

    # Copy the file to a specified directory
    cp childrenAccount.txt /C/Users/IMGN-DRGN/Desktop/ShellScript/BankDirectory/
}
while true; do
    echo -e "\t\t\tEnter 1 For Banking Service\n\t\t\tEnter 2 To Contact Service Centre\n\t\t\tEnter x To Exit\n\t\t\t -n Enter Option : "
    read menuOption

    case $menuOption in
        1)
            accountOpen
            ;;
        2)
            echo -e "\t\t\tCustomer Service"
            ;;
        x)
            exit 0
            ;;
        *)
            echo "Wrong Input"
            ;;
    esac
done


