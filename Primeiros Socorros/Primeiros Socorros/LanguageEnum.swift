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
    
    var q1 : String {
        switch LanguageManager.shared.injury {
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
        switch LanguageManager.shared.injury {
        case .trauma:
            switch self{
            case .english:
                return "dsfsfdd"
            case .portuguese:
                return "sdfaf"
            case .spanish:
                return "sdfsadds"
            }
        default:
            return "No Question"
        }
        
    }
    
    var q3 : String {
        switch LanguageManager.shared.injury {
        case .trauma:
            switch self{
            case .english:
                return "dsfsfdd"
            case .portuguese:
                return "sdfaf"
            case .spanish:
                return "sdfsadds"
            }
        default:
            return "No Question"
        }
        
    }
}
