//
//  VariousQuestions.swift
//  LanguageGameApp
//
//  Created by Cristian P. Barrera on 5/1/22.
//

import Foundation

class VariousQuestions {
    var listOfQuestions = [QuestionBrain]() //array of questions
    
    init()
    {
        //Creating an array of questions by appending and using the brain class of this app
        listOfQuestions.append(QuestionBrain(image: "House", questionText: "We call this image a house! What would you call it in spanish?  ", optionA: "A. Bicicleta ", optionB: "B. Casa", optionC:"C. Ropa", optionD: "D. Paloma", realAnswer: 2))
    
        listOfQuestions.append(QuestionBrain(image: "Dog", questionText: "This is a pet animal that shows loyalty and love! What do you call this animal in spanish?", optionA: "A. El gato ", optionB: "B. La tortuga", optionC:"C. el Pez", optionD: "D. El perro", realAnswer: 4))
    
        listOfQuestions.append(QuestionBrain(image: "Coffee", questionText: "People drink this beverage when they are sleepy! What do you call this beverage in spanish?", optionA: "A. Café ", optionB: "B. Jugo", optionC:"C. Cerveza", optionD: "D. Leche", realAnswer: 1))
        
        listOfQuestions.append(QuestionBrain(image: "Grandma", questionText: "This person is the mother of one of your parents! What do we call this person?", optionA: "A. El abuelo ", optionB: "B. La hermana", optionC:"C. La nieta", optionD: "D. La abuela", realAnswer: 4))
        
        listOfQuestions.append(QuestionBrain(image: "Beach", questionText: "People enjoy going here in the summer to relax! What do you call this place in spanish? ", optionA: "A. El cine ", optionB: "B. El restaurante", optionC:"C. La playa", optionD: "D. La biblioteca", realAnswer: 3))
    
        listOfQuestions.append(QuestionBrain(image: "Library", questionText: "Most college students spend their time here to study! What do you call this place in spanish?", optionA: "A. La piscina ", optionB: "B. La casa", optionC:"C. La biblioteca", optionD: "D. La discoteca", realAnswer: 3))
    
        listOfQuestions.append(QuestionBrain(image: "Pizza", questionText: "This food is very delicious and can be addicting if you love cheese! What do you call this food in spanish?", optionA: "A. Hamburguesa ", optionB: "B. Pizza", optionC:"C. Helado", optionD: "D. Camarón", realAnswer: 2))
    
        listOfQuestions.append(QuestionBrain(image: "Blender", questionText: "This device is used to blend fruits,vegetables,etc. What do you call this device in spanish?", optionA: "A. Televisión ", optionB: "B. Refrigerador", optionC:"C. Licuadora ", optionD: "D. Cocina", realAnswer: 3))
        
        listOfQuestions.append(QuestionBrain(image: "College", questionText: "Many students who graduate high school end up here! What do you call this place in spanish?", optionA: "A. escuela secundaria", optionB: "B. Escuela intermedia", optionC:"C. Escuela primaria ", optionD: "D. Universidad", realAnswer: 4))
        
        listOfQuestions.append(QuestionBrain(image: "Plane", questionText: "This vehicle flies and is very useful for people who want to go on vacation. What do you call this vehicle in spanish? ", optionA: "A.Avión  ", optionB: "B. Autobús", optionC:"C. Coche ", optionD: "D. Motocicleta", realAnswer: 1))
    
    
    
    
    }
}
