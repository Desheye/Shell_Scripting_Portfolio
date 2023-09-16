#!/bin/bash
echo "BANK OF THE SOUTHWESTLANDS"

# Declare Account Opening Function
accOPEN() {
    echo -e "Enter 1 For Savings"
    echo
    echo -e "Enter 2 For Current"
    echo
    echo -e "Enter 3 For Domiciliary"
    echo
    echo -e "Enter 4 For Children Account"
    echo
    echo -n "Enter Option: "
    echo "Enter Any Key Outside 1- 4 To Exit :"

    savingsAcc(){
        #SavingsAcc Function Definition
        echo "Full Names : "
        read input1
        echo "Address : "
        read input2
        echo "Date Of Birth : "
        read input3
        echo "Place Of Birth : "
        read input4
        echo "Mobile Contact : "
        read input5

        currentDate=$(date) #Date Variable Created With A Vlaue Of The Realtime
        touch savingsAcc.txt #Create File To Collect The User Information
        
        inputYear=$(date -d "$input3" +%Y) #A Logic To Calculate The Actual Age Of The User
        currentYear=$(date -d "$currentDate" +%Y)
        age=$((currentYear - inputYear))
        echo -e "File Created And Saved Successfully!\n$input1\n$input2\n$input3\nAge: $age\n$input4\n$input5\n\nAccount Created On $currentDate" >> savingsAcc.txt

        cp savingsAcc.txt /c/Users/IMGN-DRGN/C-WRKSHT/BankAccountDirectory/ #File Is Copied And Saved In A Directory
    }
    currentAcc(){
         echo "Full Names : "
        read input1
        echo "Address : "
        read input2
        echo "Date Of Birth : "
        read input3
        echo "Place Of Birth : "
        read input4
        echo "Mobile Contact : "
        read input5

        currentDate=$(date)
        touch currentAcc.txt

        inputYear=$(date -d "$input3" +%Y)
        currentYear=$(date -d "$current_year" +%Y)
        age=$((currentYear - inputYear))

        echo -e "File Created And Saved Successfully!\n$input1\n$input2\n$input3\nAge: $age years\n$input4\n$input5\n\nAccount Created On $currentDate" >> currentAcc.txt
        cp currentAcc.txt /c/Users/IMGN-DRGN/C-WRKSHT/BankAccountDirectory/
    }
    domiciliaryAcc(){
        echo "Full Names : "
        read input1
        echo "Address : "
        read input2
        echo "Date Of Birth : "
        read input3
        echo "Place Of Birth : "
        read input4
        echo "Mobile Contact : "
        read input5

        current_date=$(date)
        DateOfBirth(){
            inputYear=$(date -d "$input3" + %Y)
            currentYear=$(date -d "$current_date" +%Y)
            age=$((currentYear - inputYear))
        }

        currentDate=$(date)
        touch domiciliaryAcc.txt
        echo -e "File Created And Saved Successfully!\n$input1\n$input2\n$input3\nAge: $age years\n$input4\n$input5\n\nAccount Created On $currentDate" >> domiciliaryAcc.txt
        cp domiciliaryAcc.txt /c/Users/IMGN-DRGN/C-WRKSHT/BankAccountDirectory/
    }
  childrenAcc() {
    echo "Full Names : "
    read input1
    echo "Address : "
    read input2
    echo "Date Of Birth (YYYY-MM-DD): "
    read input3
    echo "Place Of Birth : "
    read input4
    echo "Guardian/Parent Contact : "
    read input5

    currentDate=$(date)
    touch childrenAcc.txt

    # Calculate the age based on the input date of birth
    input_year=$(date -d "$input3" +%Y)
    current_year=$(date -d "$currentDate" +%Y)
    age=$((current_year - input_year))

    echo -e "File Created And Saved Successfully!\nFull Names: $input1\nAddress: $input2\nDate Of Birth: $input3\nAge: $age years\nPlace Of Birth: $input4\nGuardian/Parent Contact: $input5\n\nAccount Created On $currentDate" >> childrenAcc.txt

    cp childrenAcc.txt /c/Users/IMGN-DRGN/C-WRKSHT/BankAccountDirectory/
}



    read Option
    case $Option in
    1)
    echo "Savings Account:"
    savingsAcc
    ;;
    2)
    echo "Current Account"
    currentAcc
    ;;
    3)
    echo "Domiciliary Account"
    domiciliaryAcc
    ;;
    4)
    echo "Children Account"
    childrenAcc
    ;;
    esac
}

echo

main="1 2 3 4" 

while true; do #Create A Loop To Keep The Menu Going Until The User Terminates The Program
    # Main menu
    echo -e "Enter 1. Account Opening"
    echo -e "Enter 2. Balance Check"
    echo -e "Enter 3. Exit Program"
    echo -n "Enter Option: "
    read Option

    if ! [[ $main =~ $Option ]]; then
        echo "Wrong Input"
    else
        # Process the user's choice
case $Option in
    1)
        echo "Account Opening Page"
        accOPEN
        ;;
    2)
        echo "Balance Check Page"
        # Add code for balance check here
        ;;
    3)
        echo "Exiting Program"
        exit 0
        ;;
    *)
        echo "Invalid option. Please select a valid option."
        ;;
esac

    fi
done


