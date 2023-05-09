class QuestionsService
    def build_questions
        response = HTTParty.get("https://opentdb.com/api.php?amount=5&category=18")
        results = response["results"]
        random_questions = results[(0..results.length).to_a.sample]
        Question.create(category: random_questions["category"], question: random_questions["question"])
    end
end