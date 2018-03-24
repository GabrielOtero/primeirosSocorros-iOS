//
//  AsdViewController.swift
//  Primeiros Socorros
//
//  Created by Gabriel Otero on 18/03/18.
//  Copyright © 2018 Gabriel Otero. All rights reserved.
//

import UIKit

class QuizPageViewController: UIViewController {
    
    @IBOutlet weak var q1Label: UILabel!
    @IBOutlet weak var q2Label: UILabel!
    @IBOutlet weak var q3Label: UILabel!
    @IBOutlet weak var goToNextBtn: UIButton!
    @IBOutlet weak var backToMenuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        q1Label.text = LanguageManager.shared.currentLanguage.q1
        q2Label.text = LanguageManager.shared.currentLanguage.q2
        q3Label.text = LanguageManager.shared.currentLanguage.q3
        
        backToMenuBtn.setTitle(LanguageManager.shared.currentLanguage.backToMenu, for: .normal)
        
        if(LanguageManager.shared.currentInjury != Injury.arrest){
            goToNextBtn.setTitle(LanguageManager.shared.currentLanguage.goToButton , for: .normal)
            LanguageManager.shared.currentInjury = LanguageManager.shared.currentInjury.next
        }
    }
}

