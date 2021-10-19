import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    //Added another button and a corroponding outlet.
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizMain = QuizMain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    //New button needs to be linked to this IBAction too.
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        //Stores the answer selected by the user
        let userAnswer = sender.currentTitle!
        
        //Checks for true or false value stored in the userCorrect variable and changes the colour of the selected button to green or red as required
        let userCorrect = quizMain.checkAnswer(userAnswer: userAnswer)
        
        if userCorrect {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizMain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    //This function is used to update the user interface as the user progresses with the quiz.
    @objc func updateUI() {
        //This updates the question label to the questions stored in the quiz array.
        questionLabel.text = quizMain.fetchQuestion()
        
        //This portion of the code fetches the answers from the quiz array and updates each answer choice. 
        let answerChoices = quizMain.fetchAnswers()
        choice1.setTitle(answerChoices[0], for: .normal)
        choice2.setTitle(answerChoices[1], for: .normal)
        choice3.setTitle(answerChoices[2], for: .normal)
        
        //Updates the progress bar and ensures the score count is kept properly
        progressBar.progress = quizMain.progressBar()
        scoreLabel.text = "Score: \(quizMain.scoreCount())"
        
        //Since the colour of the button changes each time the user selects an answer, this portion ensures that the buttons return to their original colour.
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        
    }

}


























