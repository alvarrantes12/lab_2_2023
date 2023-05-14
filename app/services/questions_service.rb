class QuestionsService
    def build_question
        response = HTTParty.get("https://opentdb.com/api.php?amount=5&category=18")
        results = response["results"]
        random_question = results[(0..results.length).to_a.sample]
        Question.create(category: random_question["category"], question: random_question["question"])
    end
end