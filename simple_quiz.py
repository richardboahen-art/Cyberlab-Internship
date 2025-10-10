
import random

# Updated dictionary with 19 countries
countries_info = {
    "France": {"capital": "Paris", "continent": "Europe"},
    "Japan": {"capital": "Tokyo", "continent": "Asia"},
    "Brazil": {"capital": "Brasília", "continent": "South America"},
    "Canada": {"capital": "Ottawa", "continent": "North America"},
    "Australia": {"capital": "Canberra", "continent": "Australia"},
    "Egypt": {"capital": "Cairo", "continent": "Africa"},
    "India": {"capital": "New Delhi", "continent": "Asia"},
    "Germany": {"capital": "Berlin", "continent": "Europe"},
    "Kenya": {"capital": "Nairobi", "continent": "Africa"},
    "Argentina": {"capital": "Buenos Aires", "continent": "South America"},
    "South Korea": {"capital": "Seoul", "continent": "Asia"},
    "Italy": {"capital": "Rome", "continent": "Europe"},
    "Mexico": {"capital": "Mexico City", "continent": "North America"},
    "Nigeria": {"capital": "Abuja", "continent": "Africa"},
    "China": {"capital": "Beijing", "continent": "Asia"},
    "Spain": {"capital": "Madrid", "continent": "Europe"},
    "Russia": {"capital": "Moscow", "continent": "Europe"},
    "Saudi Arabia": {"capital": "Riyadh", "continent": "Asia"},
    "Thailand": {"capital": "Bangkok", "continent": "Asia"},
}

def ask_questions():
    score = 0
    questions = []

    # Generate capital and continent questions for each country
    for country, info in countries_info.items():
        questions.append({
            "question": f"What is the capital of {country}?",
            "answer": info["capital"]
        })
        questions.append({
            "question": f"On which continent is {country} located?",
            "answer": info["continent"]
        })

    # Shuffle and pick 5 random questions
    random.shuffle(questions)
    quiz_questions = questions[:5]

    print("\nafWelcome to the Country Quiz!")
    print("Answer the following 5 questions:\n")

    for i, q in enumerate(quiz_questions, 1):
        user_answer = input(f"{i}. {q['question']} ").strip()
        if user_answer.lower() == q["answer"].lower():
            print("Correct!\n")
            score += 1
        else:
            print(f"Wrong. The correct answer is: {q['answer']}\n")

    print(f"You scored {score} out of 5!\n")

def main():
    while True:
        ask_questions()
        choice = input("Would you like to play again? (yes/no): ").strip().lower()
        if choice not in ("yes", "y"):
            print("\nGoodbye! Thanks for playing.")
            break
        print("\n Restarting the quiz...\n")

if __name__ == "__main__":
    main()
