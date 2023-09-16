#PositionalArgs
#If-Else
#Loops
#Functions
#FileTestOperators



echo "POSITIONAL ARGUMENTS"

args1=$1
args2=$2
args3=$3

echo "Enter Arguments : "
read input1 input2 input3

echo "args 1 = $input1 args 2 = $input2 args 3 = $input3"

#Positional Argument with variable holding
#multiple argument

echo "POSITIONAL ARGUMENTS 2"

# Store three positional arguments in a single variable
args="$1 $2 $3"

# Display the stored arguments
echo "Arguments stored in 'args' variable: $args"

# To access them individually, you can use parameter expansion
arg1="${args%% *}"   # Get the first argument
args="${args#* }"    # Remove the first argument from 'args'
arg2="${args%% *}"   # Get the second argument
args="${args#* }"    # Remove the second argument from 'args'
arg3="$args"         # The remaining 'args' is the third argument

# Display the individual arguments
echo "Individual Arguments:"
echo "Argument 1: $arg1"
echo "Argument 2: $arg2"
echo "Argument 3: $arg3"
