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
    
    var currentInjury: String {
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
}
