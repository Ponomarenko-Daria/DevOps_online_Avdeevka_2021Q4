import math

"""
The main solv_square_equation.py script should have the following functions:
-main()
- validate_param(int) - checks that a number is entered, repeats the input 3 times if not a number
(use exception)
- discriminant(a, b, c)
- roots(d, a, b, c)
- solv_square(a, b, c) -> roots
- square_print(a, b, c, roots) - displays the result
on dedicated write UnitTest.
"""

def validate_param(Int):
        try:
            value = int(Int)
            return value  
        except:
            print("It`s not number. Try again.") 

def discriminant(a, b, c):
    d = b**2 - 4*a*c
    return d

def roots(d, a, b, c):
    if d > 0:
        sqrt = math.sqrt(d)
        x1 = (-b + sqrt)/(2*a)
        x2 = (-b - sqrt)/(2*a)
        return x1, x2
    elif d == 0:
        x1 = -b/(2*a)
        return x1
    else:
        x1 = ("No roots")
        return "No roots"

def solv_square(a, b, c):
    d = discriminant(a, b, c)
    Roots = roots(d, a, b, c)
    return Roots

def square_print(a, b, c, Roots):
        print("Quadratic equation: \n", a, "x^2 + ", b, "x + ", c, "= 0")
        print("Discriminant: ", discriminant(a, b, c))
        print("Roots: ", Roots) 



if __name__ == '__main__':
    for i in range(3):
        num = input("Enter number a: ")
        if validate_param(num) != None:
            a = int(num)
            break

    for i in range(3):
        num = input("Enter number b: ")
        if validate_param(num) != None:
            b = int(num)
            break

    for i in range(3):
        num = input("Enter number c: ")
        if validate_param(num) != None:
            c = int(num)
            break

    square_print(a, b, c, solv_square(a, b, c))

