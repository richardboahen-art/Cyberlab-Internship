## gradae cheker
print("this script takes your score and grades it")
try:
    score = float(input("Please enter your score: "))

    if 90 <= score <= 100:
        grade = 'A'
    elif 70 <= score <= 89:
        grade = 'B'
    elif 50 <= score <= 69:
        grade = 'C'
    elif 30 <= score <= 49:
        grade = 'D'
    elif 20 <= score <= 29:
        grade = 'E'
    elif 0 <= score <= 19:
        grade = 'F'
    else:
        print("Invalid input: score must be between 0 and 100.")
        exit()

    print(f"You had grade {grade}")

except ValueError:
    print("Invalid input: please enter a number.")
