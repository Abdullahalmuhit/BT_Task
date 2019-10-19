value = int (input("How many time you want to run this program?: "))

def check_palindromes(value):
    
    charecter = input("Enter Your One Character: ")
    my_str = charecter+'aDAm'

    # make it suitable for caseless comparison
    my_str = my_str.casefold()

    # reverse the string
    rev_str = reversed(my_str)

    # check if the string is equal to its reverse
    if list(my_str) == list(rev_str):
        print("It is palindrome")
    else:
        print("It is not palindrome")


for x in range(value):

    check_palindromes(value)