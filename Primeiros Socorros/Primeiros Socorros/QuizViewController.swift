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
    @IBOutlet weak var sendQuizBtn: UIButton!
    @IBOutlet weak var scrollViewContent: UIScrollView!
    
    @IBOutlet weak var q1opt1: UILabel!
    @IBOutlet weak var q1opt2: UILabel!
    @IBOutlet weak var q1opt3: UILabel!
    @IBOutlet weak var q1opt4: UILabel!
    
    @IBOutlet weak var q2opt1: UILabel!
    @IBOutlet weak var q2opt2: UILabel!
    @IBOutlet weak var q2opt3: UILabel!
    @IBOutlet weak var q2opt4: UILabel!
    
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
        
        q1opt1.text = LanguageManager.shared.currentLanguage.q1opt1
        q1opt2.text = LanguageManager.shared.currentLanguage.q1opt2
        q1opt3.text = LanguageManager.shared.currentLanguage.q1opt3
        q1opt4.text = LanguageManager.shared.currentLanguage.q1opt4
        
        q2opt1.text = LanguageManager.shared.currentLanguage.q2opt1
        q2opt2.text = LanguageManager.shared.currentLanguage.q2opt2
        q2opt3.text = LanguageManager.shared.currentLanguage.q2opt3
        q2opt4.text = LanguageManager.shared.currentLanguage.q2opt4
        
        backToMenuBtn.isHidden = true
        goToNextBtn.isHidden = true
        
        backToMenuBtn.setTitle(LanguageManager.shared.currentLanguage.backToMenu, for: .normal)
        
        if(LanguageManager.shared.currentInjury != Injury.arrest){
            goToNextBtn.setTitle(LanguageManager.shared.currentLanguage.goToButton , for: .normal)
            LanguageManager.shared.currentInjury = LanguageManager.shared.currentInjury.next
        }
    }
    
    @IBAction func sendClick(_ sender: UIButton) {
        UIView.animate(withDuration: 0.25, animations: { () -> Void in
            DispatchQueue.main.async {  // UI updates on the main thread
                self.backToMenuBtn.isHidden = false
                self.goToNextBtn.isHidden = false
                let desiredOffset = CGPoint(x: 0, y: 0)
                self.scrollViewContent.setContentOffset(desiredOffset, animated: true)
            }
    })
    }
}

