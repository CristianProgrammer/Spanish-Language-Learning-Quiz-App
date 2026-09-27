//
//  ViewController.swift
//  LanguageGameApp
//
//  Created by Cristian P. Barrera on 5/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var progressBarView: UIView!
    
    @IBOutlet weak var randomImageView: UIImageView!
    
    @IBOutlet weak var descriptionLabelOutput: UILabel!
    
    @IBOutlet weak var answerA: UIButton!
    
    @IBOutlet weak var answerB: UIButton!
    
    @IBOutlet weak var answerC: UIButton!
    
    @IBOutlet weak var answerD: UIButton!
    
    let allQuestions = VariousQuestions()//variable using class properties
    
    var answerNumber: Int = 0 //Keep track of index of the array
    
    var score: Int = 0 //score variable when answer clicked is correct
    
    var clickedAnswer : Int = 0 //clicked answer will store the correct button tag and verify in an if statement if the question has been answered correctly !
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeQuestion()
        updateScreenLabel()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonAnswerClick(_ sender: UIButton)
    {
        //when user clicks on the correct tag number, score will increment
        if sender.tag == clickedAnswer
        {
            print("Correct!!!")
            score = score + 1
        }
        else
        {
            print("Wrong!!!")
        }
        //After answer has been clicked we will move to the next question by incrementing index number
        answerNumber += 1
        changeQuestion() // once clicked and if it's either correct or wrong will change the description label of the question
    }
    
    func updateScreenLabel()
    {
        scoreLabel.text = "Score: \(score)/ \(allQuestions.listOfQuestions.count)"
        progressBarView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.listOfQuestions.count)) * CGFloat(answerNumber + 1) //Will increase the width size to display the users progress when the user is close to the last question
       
    }
    
    func changeQuestion()
    {
        //answer number will start from 0 and iterate over the array until the game is complete !
        if answerNumber <=  allQuestions.listOfQuestions.count-1
        {
            
            //image will change to the next index image of the array
            randomImageView.image = UIImage(named:(allQuestions.listOfQuestions[answerNumber].visualImage))
            //Description of the image will change once function is called to the next index of the array
            descriptionLabelOutput.text = allQuestions.listOfQuestions[answerNumber].question
            
            //All of the possible answers will change to the next question text  index of the array!
            answerA.setTitle(allQuestions.listOfQuestions[answerNumber].answerA, for: .normal)
            answerB.setTitle(allQuestions.listOfQuestions[answerNumber].answerB, for: .normal)
            answerC.setTitle(allQuestions.listOfQuestions[answerNumber].answerC, for: .normal)
            answerD.setTitle(allQuestions.listOfQuestions[answerNumber].answerD, for: .normal)
            
            // for that specific index of the array will store the correct answer button tag number
            clickedAnswer = allQuestions.listOfQuestions[answerNumber].rightAnswer
           
        }
        //else statement will appear once the whole array of questions have been answered and shows the user their score and option to start again the game
        else
        {
            let alert = UIAlertController(title: "Did you learn something?", message: "Your score was \(score)/ \(allQuestions.listOfQuestions.count)! Do you want to practice again?", preferredStyle: .alert)
            let restartGame = UIAlertAction(title:"Restart Game", style: .default, handler: {action in self.restart()})
            alert.addAction(restartGame)
            present(alert, animated: true, completion: nil)
        }
        updateScreenLabel() //function of update screen label is called
        }
    
    //score and index number will be restored and return to the very first index of array of questions
    func restart()
    {
        score = 0
        answerNumber = 0
        changeQuestion()
    }

}

