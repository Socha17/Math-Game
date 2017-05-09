
module MathGame
  class Question

      attr_accessor :question

    @@list_questions = [
      {
        question: "What is 2 + 2",
        answer: 4
      },
      {
        question: "What is 3 + 2",
        answer: 5
      },
      {
        question: "What is 3 + 3",
        answer: 6
      },
      {
        question: "What is 5 + 5",
        answer: 10
      },
      {
        question: "What is 10 + 10",
        answer: 20
      }
    ]

    def initialize(question)
      @question = question
    end

    def get_question
      q_random = rand(0..4)
      q1 = @@list_questions[q_random]
    end

  end
end
