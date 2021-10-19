# iOS-Quiz-App-Functionality-Explanation
This a multiple choice quiz app I recently learnt how to make. 

I used the MVC model to write my code.
M: Model
  In this folder, I have the Question.swift and QuizMain.swift files. Question.swift contains the structure and initialiser I have used to create and store the questions, answer choices and correct answers. QuizMain.swift is the backbone of the whole application. 
  
  It contains all the functionality used by the app to display the questions, store the different answers choices in each button and compare it to the user input to check if the answer is correct or not, update the progress bar and even update the score counter for every question the user gets correct. It also checks when the quiz array has reached the end and then goes back to the first question. 
  
V: View
  This folder has the Main.storyboard and LaunchScreen.storyboard. Here Main.storyboard contains all the information displayed to the user. The score counter, question text, the progress bar and the answer choice buttons.
  
C: Controller 
  This folder contains the ViewController.swift file in which all changes to the user interface is carried out. I've linked all the elements in the main view using IBOutlets so that I can make the necessary changes when required, as the user progresses with the quiz. I also used an IBAction function to record which answer choice the user selects and compare it to the correct answer. If the user is correct, the selected answer button turns green for 0.2 seconds. I implemented a timer to make sure the button colour changes back to normal for the next question. Lastly, I created an updateUI function which speaks for itself, to update the user interface. Over here, after every question, the question text is set to change to the next question and simultaneously, the answer choices are also going to change. This has also been implemented using IBOutlets. The progress bar and the score counter label are also set to update and change themselves using functions from the QuizMain.swift file. Lastly, as mentioned above, the answer choice buttons are set to change back to their original colour. 
