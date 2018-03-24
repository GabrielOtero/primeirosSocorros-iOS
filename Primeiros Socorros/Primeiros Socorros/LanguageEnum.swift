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
                return "Ir para parada cardáca!"
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
}
