//
//  QuestionBrain.swift
//  LanguageGameApp
//
//  Created by Cristian P. Barrera on 5/1/22.
//

import Foundation

class QuestionBrain
{
    //Model considered the Brain of the app
    var visualImage:String
    var question:String
    var answerA:String
    var answerB:String
    var answerC:String
    var answerD:String
    var rightAnswer: Int
    
    //initializers
    init(image:String, questionText:String, optionA:String, optionB:String, optionC:String,optionD:String, realAnswer:Int)
    {
        visualImage = image
        question = questionText
        answerA = optionA
        answerB = optionB
        answerC = optionC
        answerD = optionD
        rightAnswer = realAnswer
    }
    
}
