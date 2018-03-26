//
//  LanguageEnum.swift
//  Primeiros Socorros
//
//  Created by Gabriel Otero on 17/03/18.
//  Copyright © 2018 Gabriel Otero. All rights reserved.
//

import UIKit

enum Language {
    case english
    case portuguese
    case spanish
    
    var currentLanguage: String {
        switch self {
        case .english:
            return "en"
        case .portuguese:
            return "pt"
        case .spanish:
            return "es"
        }
    }
    
    var back: String{
        switch self {
        case .english:
            return "< Go Back"
        case .portuguese:
            return "< Voltar"
        case .spanish:
            return "< Volver"
        }
    }
    
    var nowAnswer: String{
        switch self {
        case .english:
            return "Now Answer..."
        case .portuguese:
            return "Agora Responda..."
        case .spanish:
            return "Ahora Responda..."
        }
    }
    
    var send: String{
        switch self {
        case .english:
            return "Send!"
        case .portuguese:
            return "Enviar!"
        case .spanish:
            return "Enviar!"
        }
    }
    
    var backToMenu: String{
        switch self {
        case .english:
            return "Return to Menu!"
        case .portuguese:
            return "Voltar para o Menu!"
        case .spanish:
            return "Volver al Menú!"
        }
    }
    
    var whatIs: String {
        switch self {
        case .english:
            return "What is?"
        case .portuguese:
            return "O que é?"
        case .spanish:
            return "Que és?"
        }
    }
    
    var trauma: String {
        switch self {
        case .english:
            return "Trauma"
        case .portuguese:
            return "Trauma"
        case .spanish:
            return "Trauma"
        }
    }
    
    var choking: String {
        switch self {
        case .english:
            return "Choking"
        case .portuguese:
            return "Esgasgo"
        case .spanish:
            return "Atoramiento"
        }
    }
    
    var seizure: String {
        switch self {
        case .english:
            return "Seizure"
        case .portuguese:
            return "Convulsão"
        case .spanish:
            return "Convulsión"
        }
    }
    
    var fainting: String {
        switch self {
        case .english:
            return "Fainting"
        case .portuguese:
            return "Desmaio"
        case .spanish:
            return "Desmayo"
        }
    }
    
    var arrest: String {
        switch self {
        case .english:
            return "Cadiac Arrest"
        case .portuguese:
            return "Parada Cardíaca"
        case .spanish:
            return "Paro Cardiaco"
        }
    }
    
    var goToButton : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "Go to Choking!"
            case .portuguese:
                return "Ir para Engasgo!"
            case .spanish:
                return "Ir a atoramiento!"
            }
        case .choking:
            switch self{
            case .english:
                return "Go to seizure!"
            case .portuguese:
                return "Ir para Convulsão!"
            case .spanish:
                return "Ir a Convulsión!"
            }
        case .seizure:
            switch self{
            case .english:
                return "Go to Fainting!"
            case .portuguese:
                return "Ir para Desmaio!"
            case .spanish:
                return "Ir a Desmayo!"
            }
        case .fainting:
            switch self{
            case .english:
                return "Go to Cardiac Arrest!"
            case .portuguese:
                return "Ir para parada cardíaca!"
            case .spanish:
                return "Ir a Paro Cardiaco"
            }
        case .arrest:
            switch self{
            case .english:
                return ""
            case .portuguese:
                return ""
            case .spanish:
                return ""
            }
        default:
            return "Go to Next"
        }
        
    }
    
    var q1 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
                case .english:
                        return "What is the first thing to do in a trauma situation?"
                case .portuguese:
                        return "Qual a primeira coisa a se fazer em uma situação de trauma?"
                case .spanish:
                        return "¿Qué es lo primero que se debe hacer ante un trauma?"
            }
        case .choking:
            switch self{
                case .english:
                    return "What is a situation of choking?"
                case .portuguese:
                    return "O que é um engasgo?"
                case .spanish:
                    return "¿Qué es el atoramiento?"
            }
        case .seizure:
            switch self{
                case .english:
                    return "What is a seizure?"
                case .portuguese:
                    return "O que é Convulsão?"
                case .spanish:
                    return "¿Qué es una convulsión?"
            }
        case .fainting:
            switch self{
            case .english:
                return "What is fainting?"
            case .portuguese:
                return "O que é desmaio?"
            case .spanish:
                return "¿Qué es un desmayo?"
            }
        case .arrest:
            switch self{
            case .english:
                return "What is a cardiorespiratory arrest?"
            case .portuguese:
                return "O que é uma parada cardiorrespiratória?"
            case .spanish:
                return "¿Qué es un paro cardiorrespiratorio?"
            }
        default:
            return "No Questions Yet"
        }
        
    }
    
    var q2 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "Which of the situations does not characterize a situation that can generate a trauma?"
            case .portuguese:
                return "Qual situação não caracteriza uma situação que pode gerar um trauma?"
            case .spanish:
                return "¿Cuál situación no se trata de una situación que puede generar un trauma?"
            }
        case .choking:
            switch self{
            case .english:
                return "Where is the thumb placed to perform the choking rescue maneuver?"
            case .portuguese:
                return "Qual é o lugar que se posiciona o polegar para realizar a manobra de desengasgo?"
            case .spanish:
                return "¿En qué lugar se coloca el pulgar para realizar la maniobra de desatoramiento?"
            }
        case .seizure:
            switch self{
            case .english:
                return "What is the first thing to do with a person having a seizure?"
            case .portuguese:
                return "Qual é a primeira coisa a se fazer com a pessoa que está tendo convulsão?"
            case .spanish:
                return "¿Qué es lo primero que se debe hacer cuando una persona está teniendo una convulsión?"
            }
        case .fainting:
            switch self{
            case .english:
                return "What should be done with a person who faints?"
            case .portuguese:
                return "O que deve ser feito com a pessoa que desmaia?"
            case .spanish:
                return "¿Qué se debe hacer con una persona que se desmaya?"
            }
        case .arrest:
            switch self{
            case .english:
                return "How do we know that the person is having a respiratory arrest?"
            case .portuguese:
                return "Como sabemos que a pessoa está tendo uma parada respiratória?"
            case .spanish:
                return "¿Cómo sabemos si una persona está sufriendo un paro cardíaco?"
            }
        default:
            return "No Questions Yet"
        }
        
    }
    
    var q3 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "What is a trauma?"
            case .portuguese:
                return "O que é um trauma?"
            case .spanish:
                return "¿Qué es un trauma?"
            }
        case .choking:
            switch self{
            case .english:
                return "What is not right to do in the choking rescue maneuver for babies under 1 year?"
            case .portuguese:
                return "O que não deve se fazer na manobra de desengasgo em bebês menores de 1 ano?"
            case .spanish:
                return "¿Qué es lo que no se debe hacer en la maniobra de desatoramiento en bebés menores de 1 año?"
            }
        case .seizure:
            switch self{
            case .english:
                return "What should not be done with a person having a seizure?"
            case .portuguese:
                return "O que não deve se fazer com uma pessoa que está tendo convulsão?"
            case .spanish:
                return "¿Qué es lo que no se debe hacer con una persona que está teniendo una convulsión?"
            }
        case .fainting:
            switch self{
            case .english:
                return "What should not be done with a person who faints?"
            case .portuguese:
                return "O que não deve ser feito com a pessoa que desmaia?"
            case .spanish:
                return "¿Qué es lo que no se debe hacer con una persona que se desmaya?"
            }
        case .arrest:
            switch self{
            case .english:
                return "What should we do in every cardiorespiratory arrest?"
            case .portuguese:
                return "O que devemos fazer em toda a parada cardiorrespiratória?"
            case .spanish:
                return "¿Qué debemos hacer en todo caso de paro cardiorrespiratorio?"
            }
        default:
            return "No Questions Yet"
        }
    }
        
        var q4 : String {
            switch LanguageManager.shared.currentInjury {
            case .arrest:
                switch self{
                case .english:
                    return "How many compressions should be done in 1 minute?"
                case .portuguese:
                    return "Quantas compressões deve se fazer em 1 minuto?"
                case .spanish:
                    return "¿Cuántas compresiones se deben hacer en 1 minuto?"
                }
            default:
                return "No Questions Yet"
            }
        }
        
        var q5 : String {
            switch LanguageManager.shared.currentInjury {
            case .arrest:
                switch self{
                case .english:
                    return "What is an AED? Who can use it?"
                case .portuguese:
                    return "O que é DEA? Quem pode usá-lo?"
                case .spanish:
                    return "¿Qué es DEA? ¿Quién puede usarlo?"
                }
            default:
                return "No Questions Yet"
            }
        }
        
        var q6 : String {
            switch LanguageManager.shared.currentInjury {
            case .arrest:
                switch self{
                case .english:
                    return "What does the AED do?"
                case .portuguese:
                    return "O que o DEA faz?"
                case .spanish:
                    return "¿Qué hace el DEA?"
                }
            default:
                return "No Questions Yet"
            }
        }
    
    var q1opt1 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "Touching the victim's shoulder without moving her."
            case .portuguese:
                return "Tocar no ombro da vítima sem movimentá-la."
            case .spanish:
                return "Tocar el hombro de la víctima sin moverla."
            }
        case .choking:
            switch self{
            case .english:
                return "It is a foreign body that prevents the air from getting to the lungs."
            case .portuguese:
                return "É um corpo estranho que impede a passagem do ar até chegar no pulmão."
            case .spanish:
                return "Es cuando un cuerpo extraño impide el paso del aire hasta el pulmón."
            }
        case .seizure:
            switch self{
            case .english:
                return "It is when a person faints with the body tense and presents involuntary movement."
            case .portuguese:
                return "É quando uma pessoa desmaia com o corpo tenso e apresenta movimento involuntário."
            case .spanish:
                return "Es cuando una persona se desmaya con el cuerpo tenso y presenta movimientos involuntarios."
            }
        case .fainting:
            switch self{
            case .english:
                return "It is when a person falls after stumbling on something."
            case .portuguese:
                return "É quando a pessoa cai depois de tropeçar em algo."
            case .spanish:
                return "Es cuando una persona se cae después de tropezar con algo."
            }
        case .arrest:
            switch self{
            case .english:
                return "It is when the person stops breathing and her heart stops beating."
            case .portuguese:
                return "É quando a pessoa para de respirar e o coração dela para de bater."
            case .spanish:
                return "Es cuando una persona para de respirar y su corazón para de latir."
            }
        default:
            return "No Questions Yet"
        }
    }
    
    var q1opt2 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "Call the person by name, if possible."
            case .portuguese:
                return "Chamar a pessoa pelo nome, se possível."
            case .spanish:
                return "Llamar a la persona por su nombre, en caso de que sea posible."
            }
        case .choking:
            switch self{
            case .english:
                return "It is a lung disease."
            case .portuguese:
                return "É uma doença do pulmão."
            case .spanish:
                return "Es una enfermedad del pulmón."
            }
        case .seizure:
            switch self{
            case .english:
                return "It is a contagious disease where you cannot get close to the person."
            case .portuguese:
                return "É uma doença contagiosa em que não pode se aproximar da pessoa."
            case .spanish:
                return "Es una enfermedad contagiosa ante la cual debemos mantener distancia de quien la padece."
            }
        case .fainting:
            switch self{
            case .english:
                return "It is the temporary and sudden loss of consciousness."
            case .portuguese:
                return "É a perda temporária e repentina da consciência."
            case .spanish:
                return "Es la pérdida temporaria y repentina de la consciencia."
            }
        case .arrest:
            switch self{
            case .english:
                return "It is only when the person stops breathing."
            case .portuguese:
                return "É somente quando a pessoa para de respirar."
            case .spanish:
                return "Es únicamente cuando una persona para de respirar."
            }
        default:
            return "No Questions Yet"
        }
    }
    
    var q1opt3 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "Do not move the person."
            case .portuguese:
                return "Não movimentar a pessoa."
            case .spanish:
                return "No mover a la persona."
            }
        case .choking:
            switch self{
            case .english:
                return "It is when the brain runs out of oxygen."
            case .portuguese:
                return "É quando o cérebro fica sem oxigênio."
            case .spanish:
                return "Es cuando el cerebro se queda sin oxígeno."
            }
        case .seizure:
            switch self{
            case .english:
                return "It is when the person passes out and moves attempting to get up."
            case .portuguese:
                return "É quando a pessoa desmaia e apresenta movimentos na tentativa de se levantar."
            case .spanish:
                return "Es cuando una persona se desmaya y presenta movimientos como parte del intento de levantarse."
            }
        case .fainting:
            switch self{
            case .english:
                return "It is the loss of balance."
            case .portuguese:
                return "É a perda do equilíbrio."
            case .spanish:
                return "Es la pérdida del equilibrio."
            }
        case .arrest:
            switch self{
            case .english:
                return "It is only when the heart stops beating."
            case .portuguese:
                return "É somente quando o coração para de bater."
            case .spanish:
                return "Es únicamente cuando el corazón para de latir."
            }
        default:
            return "No Questions Yet"
        }
    }
    
    var q1opt4 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "Hold the victim’s head."
            case .portuguese:
                return "Segurar a cabeça."
            case .spanish:
                return "Sostener la cabeza."
            }
        case .choking:
            switch self{
            case .english:
                return "It is a type of fall."
            case .portuguese:
                return "É um tipo de queda."
            case .spanish:
                return "Es un tipo de caída."
            }
        case .seizure:
            switch self{
            case .english:
                return "It is a disease that causes brain damage and leaves the person bedridden"
            case .portuguese:
                return "É uma doença que causa problemas no cérebro e deixa a pessoa acamada."
            case .spanish:
                return "Es una enfermedad que provoca problemas en el cerebro dejando a la persona en cama."
            }
        case .fainting:
            switch self{
            case .english:
                return "It will always happen in people who are going to have a seizure."
            case .portuguese:
                return "Sempre vai acontecer nas pessoas que vão começar a convulsionar."
            case .spanish:
                return "Siempre sucederá en las personas que van a convulsionar."
            }
        case .arrest:
            switch self{
            case .english:
                return "It is when the person needs help to breathe."
            case .portuguese:
                return "É quando a pessoa precisa de ajuda para respirar."
            case .spanish:
                return "Es cuando una persona necesita ayuda para respirar."
            }
        default:
            return "No Questions Yet"
        }
    }
    
    var q2opt1 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "Car accident."
            case .portuguese:
                return "Acidente de carro."
            case .spanish:
                return "Accidente de auto."
            }
        case .choking:
            switch self{
            case .english:
                return "In the middle of the personperson's chest."
            case .portuguese:
                return "No meio do peito da pessoa."
            case .spanish:
                return "En medio del pecho de la persona."
            }
        case .seizure:
            switch self{
            case .english:
                return "Try to stop the movements."
            case .portuguese:
                return "Tentar impedir os movimentos."
            case .spanish:
                return "Tratar de impedir los movimientos."
            }
        case .fainting:
            switch self{
            case .english:
                return "Let the person stand and wait for medical help."
            case .portuguese:
                return "Deixar a pessoa de pé e esperar o socorro."
            case .spanish:
                return "Mantener a la persona de pie y esperar ayuda"
            }
        case .arrest:
            switch self{
            case .english:
                return "Feeling the temperature of the body."
            case .portuguese:
                return "Sentindo a temperatura do corpo."
            case .spanish:
                return "Sintiendo la temperatura de su cuerpo."
            }
        default:
            return "No Questions Yet"
        }
    }
    
    var q2opt2 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "Choking."
            case .portuguese:
                return "Engasgo."
            case .spanish:
                return "Atoramiento."
            }
        case .choking:
            switch self{
            case .english:
                return "In the person's belly button."
            case .portuguese:
                return "No umbigo da pessoa."
            case .spanish:
                return "En el ombligo de la persona."
            }
        case .seizure:
            switch self{
            case .english:
                return "Open the person's mouth."
            case .portuguese:
                return "Abrir a boca da pessoa."
            case .spanish:
                return "Abrirle la boca."
            }
        case .fainting:
            switch self{
            case .english:
                return "Let the person lying down with her head higher than the body until the rescue arrives."
            case .portuguese:
                return "Deixar a pessoa deitada com a cabeça mais alta que o corpo até o socorro chegar."
            case .spanish:
                return "Mantener a la persona acostada con la cabeza más alta que el cuerpo hasta que la ayuda llegue."
            }
        case .arrest:
            switch self{
            case .english:
                return "Seeing the person desperate to breathe, moving to all sides."
            case .portuguese:
                return "Vendo a pessoa desesperada para respirar, movimentando-se para todos os lados."
            case .spanish:
                return "Vemos a la persona desesperada por respirar, moviéndose inquieta."
            }
        default:
            return "No Questions Yet"
        }
    }
    
    var q2opt3 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "Falling of high places."
            case .portuguese:
                return "Queda de lugares altos."
            case .spanish:
                return "Caídas desde lugares altos."
            }
        case .choking:
            switch self{
            case .english:
                return "Above the person's belly button."
            case .portuguese:
                return "Acima do umbigo da pessoa."
            case .spanish:
                return "Encima del ombligo de la persona."
            }
        case .seizure:
            switch self{
            case .english:
                return "Call the Emergency Medical Service."
            case .portuguese:
                return "Ligar para o SAMU."
            case .spanish:
                return "Llamar al SAMU."
            }
        case .fainting:
            switch self{
            case .english:
                return "Leave the person alone and call for help."
            case .portuguese:
                return "Deixar a pessoa sozinha e chamar o socorro."
            case .spanish:
                return "Dejar sola a la persona y pedir ayuda."
            }
        case .arrest:
            switch self{
            case .english:
                return "Seeing the chest not moving, by not hearing breathing noises or by not feeling the air coming out when approaching your hand near to the person's nose."
            case .portuguese:
                return "Vendo o tórax não se mexer, não ouvir o barulho da respiração ou não sentir a saída de ar na pele ao aproximar a mão perto do nariz da pessoa."
            case .spanish:
                return "No vemos movimiento del tórax, no oímos el ruido de la respiración ni sentimos la salida de aire en nuestra piel si acercamos nuestra mano cerca de la nariz de la persona."
            }
        default:
            return "No Questions Yet"
        }
    }
    
    var q2opt4 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "Crushing."
            case .portuguese:
                return "Esmagamento."
            case .spanish:
                return "Aplastamiento."
            }
        case .choking:
            switch self{
            case .english:
                return "Below the person's belly button."
            case .portuguese:
                return "Abaixo do umbigo da pessoa."
            case .spanish:
                return "Abajo del ombligo de la persona."
            }
        case .seizure:
            switch self{
            case .english:
                return "Give water or medicine to the person."
            case .portuguese:
                return "Dar água ou remédio para a pessoa."
            case .spanish:
                return "Darle agua o remedios."
            }
        case .fainting:
            switch self{
            case .english:
                return "Let the person lying down with the head lower than the body until the rescue arrives."
            case .portuguese:
                return "Deixar a pessoa deitada com a cabeça mais baixa que o corpo até o socorro chegar."
            case .spanish:
                return "Mantener a la persona acostada con la cabeza más baja que el cuerpo hasta que la ayuda llegue."
            }
        case .arrest:
            switch self{
            case .english:
                return "Hearing the person calling for help, saying that she cannot breathe."
            case .portuguese:
                return "Ouvindo a pessoa chamar socorro, dizendo que não consegue respirar."
            case .spanish:
                return "Escuchando a la persona pedir ayuda, diciendo que no puede respirar."
            }
        default:
            return "No Questions Yet"
        }
    }
    
    var q3opt1 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "It is a type of bone fracture."
            case .portuguese:
                return "É um tipo de fratura óssea."
            case .spanish:
                return "Es un tipo de fractura ósea."
            }
        case .choking:
            switch self{
            case .english:
                return "Hit the baby's back 5 times."
            case .portuguese:
                return "Golpear 5 vezes as costas do bebê."
            case .spanish:
                return "Golpear 5 veces la espalda del bebé."
            }
        case .seizure:
            switch self{
            case .english:
                return "Remove everything that is close to the person."
            case .portuguese:
                return "Afastar tudo que estiver por perto da pessoa."
            case .spanish:
                return "Alejar todo lo que este cerca de ella."
            }
        case .fainting:
            switch self{
            case .english:
                return "Let the person stand and wait for medical help."
            case .portuguese:
                return "Deixar a pessoa de pé e esperar o socorro."
            case .spanish:
                return "Dejar a la persona de pie y esperar la ayuda."
            }
        case .arrest:
            switch self{
            case .english:
                return "Leave the person alone and seek for help."
            case .portuguese:
                return "Deixar a pessoa sozinha e procurar ajuda."
            case .spanish:
                return "Dejar sola a la persona y buscar ayuda."
            }
        default:
            return "No Questions Yet"
        }
    }
    
    var q3opt2 : String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "It is an airborne disease."
            case .portuguese:
                return "É uma doença transmitida pelo ar."
            case .spanish:
                return "Es una enfermedad transmitida por el aire."
            }
        case .choking:
            switch self{
            case .english:
                return "Put the baby up."
            case .portuguese:
                return "Colocar o bebê para cima."
            case .spanish:
                return "Levantar el bebé."
            }
        case .seizure:
            switch self{
            case .english:
                return "Open the person's mouth."
            case .portuguese:
                return "Abrir a boca da pessoa."
            case .spanish:
                return "Abrirle la boca."
            }
        case .fainting:
            switch self{
            case .english:
                return "Stand beside the person until the help arrives."
            case .portuguese:
                return "Ficar ao lado da pessoa até o socorro chegar."
            case .spanish:
                return "Permanecer al lado de la persona hasta que la ayuda llegue."
            }
        case .arrest:
            switch self{
            case .english:
                return "Stand by the person until the help arrives."
            case .portuguese:
                return "Ficar do lado da pessoa até o socorro chegar."
            case .spanish:
                return "Permanecer al lado de la persona hasta que la ayuda llegue."
            }
        default:
            return "No Questions Yet"
        }
    }
    
    //TODO q3opt3
    var q3opt3: String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "It is a cardiovascular disease."
            case .portuguese:
                return "É uma doença do coração."
            case .spanish:
                return "Es una enfermedad del corazón."
            }
        case .choking:
            switch self{
            case .english:
                return "Make 5 chest compressions."
            case .portuguese:
                return "Fazer 5 compressões torácicas."
            case .spanish:
                return "Hacer 5 compresiones torácicas."
            }
        case .seizure:
            switch self{
            case .english:
                return "Call the Emergency Medical Service."
            case .portuguese:
                return "Ligar para o SAMU."
            case .spanish:
                return "Llamar al SAMU."
            }
        case .fainting:
            switch self{
            case .english:
                return "Call for help and provide room for the person to breathe."
            case .portuguese:
                return "Chamar Socorro e proporcionar espaço para a pessoa respirar."
            case .spanish:
                return "Pedir ayuda y darle espacio a la persona para que respire."
            }
        case .arrest:
            switch self{
            case .english:
                return "Scream desperately for help."
            case .portuguese:
                return "Gritar desesperadamente por socorro."
            case .spanish:
                return "Pedir ayuda a gritos desesperadamente."
            }
        default:
            return "No Questions Yet"
        }
    }

    var q3opt4: String {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            switch self{
            case .english:
                return "It is an injury caused by a blow or impact."
            case .portuguese:
                return "É uma lesão causada por um golpe ou impacto."
            case .spanish:
                return "Es una lesión causada por un golpe o impacto."
            }
        case .choking:
            switch self{
            case .english:
                return "Put the baby down."
            case .portuguese:
                return "Colocar o bebê para baixo."
            case .spanish:
                return "Colocar el bebé para abajo."
            }
        case .seizure:
            switch self{
            case .english:
                return "Loosen victim’s clothes and wait for the movements to stop."
            case .portuguese:
                return "Afrouxar roupas e esperar que os movimentos parem."
            case .spanish:
                return "Aflojar las ropas y esperar a que los movimientos paren."
            }
        case .fainting:
            switch self{
            case .english:
                return "Let the person lying down with the head lower than the body until the rescue arrives."
            case .portuguese:
                return "Deixar a pessoa deitada com a cabeça mais baixa que o corpo até o socorro chegar."
            case .spanish:
                return "Mantener a la persona acostada con la cabeza más baja que el cuerpo hasta que la ayuda llegue."
            }
        case .arrest:
            switch self{
            case .english:
                return "Stay on the person's side until someone start compressions."
            case .portuguese:
                return "Ficar do lado da pessoa até começarem as compressões."
            case .spanish:
                return "Permanecer al lado de la persona hasta que comiencen las compresiones."
            }
        default:
            return "No Questions Yet"
        }
    }
    
    var q1CorrectAnswer: Int {
        switch LanguageManager.shared.currentInjury {
            case .trauma:
                return 3
            case .choking:
                return 1
            case .seizure:
                return 1
            case .fainting:
                return 2
            case .arrest:
                return 1
            default:
                return 0
        }
    }
    
    var q2CorrectAnswer: Int {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            return 2
        case .choking:
            return 3
        case .seizure:
            return 3
        case .fainting:
            return 4
        case .arrest:
            return 3
        default:
            return 0
        }
    }
    
    var q3CorrectAnswer: Int {
        switch LanguageManager.shared.currentInjury {
        case .trauma:
            return 4
        case .choking:
            return 2
        case .seizure:
            return 2
        case .fainting:
            return 1
        case .arrest:
            return 2
        default:
            return 0
        }
    }
    
    
    
}
