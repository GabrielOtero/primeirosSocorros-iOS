//
//  InjuryEnum.swift
//  Primeiros Socorros
//
//  Created by Gabriel Otero on 17/03/18.
//  Copyright © 2018 Gabriel Otero. All rights reserved.
//

import Foundation
enum Injury {
    case whatIs
    case trauma
    case choking
    case seizure
    case fainting
    case arrest
    
    var current: String {
        switch self {
        case .whatIs:
            return "whatIs"
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
