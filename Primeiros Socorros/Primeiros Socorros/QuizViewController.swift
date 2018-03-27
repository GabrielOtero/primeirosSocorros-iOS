//
//  AsdViewController.swift
//  Primeiros Socorros
//
//  Created by Gabriel Otero on 18/03/18.
//  Copyright © 2018 Gabriel Otero. All rights reserved.
//

import UIKit
import DLRadioButton

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
    
    @IBOutlet weak var q3opt1: UILabel!
    @IBOutlet weak var q3opt2: UILabel!
    @IBOutlet weak var q3opt3: UILabel!
    @IBOutlet weak var q3opt4: UILabel!
    
    @IBOutlet weak var q1opt1radio: DLRadioButton!
    @IBOutlet weak var q1opt2radio: DLRadioButton!
    @IBOutlet weak var q1opt3radio: DLRadioButton!
    @IBOutlet weak var q1opt4radio: DLRadioButton!
    
    @IBOutlet weak var q2opt1radio: DLRadioButton!
    @IBOutlet weak var q2opt2radio: DLRadioButton!
    @IBOutlet weak var q2opt3radio: DLRadioButton!
    @IBOutlet weak var q2opt4radio: DLRadioButton!
    
    
    @IBOutlet weak var q1Feedback: UILabel!
    
    
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
        
        q3opt1.text = LanguageManager.shared.currentLanguage.q3opt1
        q3opt2.text = LanguageManager.shared.currentLanguage.q3opt2
        q3opt3.text = LanguageManager.shared.currentLanguage.q3opt3
        q3opt4.text = LanguageManager.shared.currentLanguage.q3opt4
        
        backToMenuBtn.isHidden = true
        goToNextBtn.isHidden = true
        
        self.q1Feedback.isHidden = true
        
        backToMenuBtn.setTitle(LanguageManager.shared.currentLanguage.backToMenu, for: .normal)
        sendQuizBtn.setTitle(LanguageManager.shared.currentLanguage.send, for: .normal)
        goToNextBtn.setTitle(LanguageManager.shared.currentLanguage.goToButton , for: .normal)
        
    }
    
    fileprivate func handleQ1() {
        // UI updates on the main thread
        
        var q1SelectedOpt = 0
        
        if(self.q1opt1radio.isSelected){
            q1SelectedOpt = 1
        }
        if(self.q1opt2radio.isSelected){
            q1SelectedOpt = 2
        }
        if(self.q1opt3radio.isSelected){
            q1SelectedOpt = 3
        }
        if(self.q1opt4radio.isSelected){
            q1SelectedOpt = 4
        }
        
        self.q1Feedback.isHidden = false
        self.q1Feedback.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -10)
        if(q1SelectedOpt == LanguageManager.shared.currentLanguage.q1CorrectAnswer){
            self.q1Feedback.text = LanguageManager.shared.currentLanguage.correctAnswer
            self.q1Feedback.textColor =  UIColor.green
        }else{
            self.q1Feedback.text = LanguageManager.shared.currentLanguage.incorrectAnswer
            self.q1Feedback.textColor =  UIColor.red
        }
    }
    
    fileprivate func handleQ2() {
        // UI updates on the main thread
        
        var q2SelectedOpt = 0
        
        if(self.q2opt1radio.isSelected){
            q2SelectedOpt = 1
        }
        if(self.q2opt2radio.isSelected){
            q2SelectedOpt = 2
        }
        if(self.q2opt3radio.isSelected){
            q2SelectedOpt = 3
        }
        if(self.q2opt4radio.isSelected){
            q2SelectedOpt = 4
        }
        
        self.q1Feedback.isHidden = false
        self.q1Feedback.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -10)
        if(q2SelectedOpt == LanguageManager.shared.currentLanguage.q2CorrectAnswer){
            self.q1Feedback.text = LanguageManager.shared.currentLanguage.correctAnswer
            self.q1Feedback.textColor =  UIColor.green
        }else{
            self.q1Feedback.text = LanguageManager.shared.currentLanguage.incorrectAnswer
            self.q1Feedback.textColor =  UIColor.red
        }
    }
    
    @IBAction func sendClick(_ sender: UIButton) {
        UIView.animate(withDuration: 0.25, animations: { () -> Void in
            DispatchQueue.main.async {
                self.handleQ1()
                self.handleQ2()
                
                
                if(LanguageManager.shared.currentInjury != Injury.arrest){
                    self.goToNextBtn.isHidden = false
                }
                self.sendQuizBtn.isHidden = true
                self.backToMenuBtn.isHidden = false
                let desiredOffset = CGPoint(x: 0, y: 0)
                self.scrollViewContent.setContentOffset(desiredOffset, animated: true)
                
                LanguageManager.shared.currentInjury = LanguageManager.shared.currentInjury.next
            }
    })
    }
}

