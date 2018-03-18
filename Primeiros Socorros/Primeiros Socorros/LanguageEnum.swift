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

    
    var imageTrauma0: UIImage? {
        switch self {
        case .english:
            return UIImage(named: "trauma0en")
        case .portuguese:
            return UIImage(named: "trauma0pt")
        case .spanish:
            return UIImage(named: "trauma0es")
        }
    }
}
