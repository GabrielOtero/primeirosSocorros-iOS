//
//  LanguageManager.swift
//  Primeiros Socorros
//
//  Created by Gabriel Otero on 17/03/18.
//  Copyright © 2018 Gabriel Otero. All rights reserved.
//

import Foundation

class LanguageManager {
    static let shared: LanguageManager = LanguageManager()
    var currentLanguage: Language = .portuguese
    var currentInjury: Injury = .whatIs
}
