import Foundation

struct Question {
    let question: String
    
    //Stores various different answer choices for MCQ questions.
    let answers: [String]
    //Stores the correct answer out of the 3, so it can compare the value and proceed accordingly.
    let rightAnswer: String
    
    //The initialiser needs to be updated to match the new multiple choice quiz data. 
    init(q: String, a: [String], correctAnswer: String) {
        question = q
        answers = a
        rightAnswer = correctAnswer
    }
}

    
