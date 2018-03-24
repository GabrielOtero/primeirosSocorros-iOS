//
//  InjuryEnum.swift
//  Primeiros Socorros
//
//  Created by Gabriel Otero on 17/03/18.
//  Copyright © 2018 Gabriel Otero. All rights reserved.
//

import Foundation

enum Injury {
    case whatIs, trauma, choking, seizure, fainting, arrest
    
    var name: String {
        switch self {
        case .whatIs:
            return "what"
        case .trauma:
            return "trauma"
        case .choking:
            return "choking"
        case .seizure:
            return "seizure"
        case .fainting:
            return "fainting"
        case .arrest:
            return "arrest"
        }
    }
    
    var next: Injury {
        switch self {
        case .whatIs:
            return Injury.trauma
        case .trauma:
            return Injury.choking
        case .choking:
            return Injury.seizure
        case .seizure:
            return Injury.fainting
        case .fainting:
            return Injury.arrest
        case .arrest:
            return Injury.whatIs
        }
    }
    
    var size: Int {
        switch self {
        case .whatIs:
            return 1
        case .trauma:
            return 6
        case .choking:
            return 6
        case .seizure:
            return 5
        case .fainting:
            return 3
        case .arrest:
            return 7
        }
    }
}
