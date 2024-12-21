questions = (
    "What is the capital of france?: ",
    "What is the chemical symbol for water?:",
    "What is 12*8?:",
    "What planet is known as the red planet?:",
    
)

options = (
    ("A. Madrid", "B. Berlin", "C. Paris", "D. Rome"),
    ("A. O2", "B. CO2", "C. H2O", "D. HO2"),
    ("A. 96", "B. 108", "C. 84", "D. 102"),
    ("A. Venus", "B. Mars", "C. Jupiter", "D. Saturn"),
    
)

answers = ("C", "C", "A", "B")
guesses = []
score = 0
questions_num = 0


for question in questions:
    print("--------------")
    print(question)
    

    for option in options[questions_num]:
        print(option)
    

    guess = input("Enter (A,B,C,D): ").upper()
    guesses.append(guess)


    if guess == answers[questions_num]:
        score += 1
        print("CORRECT!")
    else:
        print("INCORRECT!")
        print(f"{answers[questions_num]} is the correct answer")
    
    
    questions_num += 1

print("-----------------")
print("     RESULTS     ")
print("-----------------")


print("Answers: ", end=" ")
for answer in answers:
    print(answer, end=" ")
print()


print("Guesses: ", end=" ")
for guess in guesses:
    print(guess, end=" ")
print()


score_percentage = int(score / len(questions) * 100)
print(f"Your score is: {score_percentage}%")
