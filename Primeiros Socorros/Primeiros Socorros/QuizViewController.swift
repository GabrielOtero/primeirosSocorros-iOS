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
    
    
    @IBOutlet weak var q3opt1radio: DLRadioButton!
    @IBOutlet weak var q3opt2radio: DLRadioButton!
    @IBOutlet weak var q3opt3radio: DLRadioButton!
    @IBOutlet weak var q3opt4radio: DLRadioButton!
    
    @IBOutlet weak var q1Feedback: UILabel!
    @IBOutlet weak var q2feedback: UILabel!
    @IBOutlet weak var q3feedback: UILabel!
    
    @IBOutlet var asd: UITapGestureRecognizer!
    
    let greenColor = UIColor.green
    let redColor = UIColor.red
    
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
        
        var tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq1opt1))
        q1opt1.isUserInteractionEnabled = true
        q1opt1.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq1opt2))
        q1opt2.isUserInteractionEnabled = true
        q1opt2.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq1opt3))
        q1opt3.isUserInteractionEnabled = true
        q1opt3.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq1opt4))
        q1opt4.isUserInteractionEnabled = true
        q1opt4.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq2opt1))
        q2opt1.isUserInteractionEnabled = true
        q2opt1.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq2opt2))
        q2opt2.isUserInteractionEnabled = true
        q2opt2.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq2opt3))
        q2opt3.isUserInteractionEnabled = true
        q2opt3.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq2opt4))
        q2opt4.isUserInteractionEnabled = true
        q2opt4.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq3opt1))
        q3opt1.isUserInteractionEnabled = true
        q3opt1.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq3opt2))
        q3opt2.isUserInteractionEnabled = true
        q3opt2.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq3opt3))
        q3opt3.isUserInteractionEnabled = true
        q3opt3.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq3opt4))
        q3opt4.isUserInteractionEnabled = true
        q3opt4.addGestureRecognizer(tap)
        
        backToMenuBtn.isHidden = true
        goToNextBtn.isHidden = true
        
        self.q1Feedback.isHidden = true
        self.q2feedback.isHidden = true
        self.q3feedback.isHidden = true
        
        backToMenuBtn.setTitle(LanguageManager.shared.currentLanguage.backToMenu, for: .normal)
        sendQuizBtn.setTitle(LanguageManager.shared.currentLanguage.send, for: .normal)
        goToNextBtn.setTitle(LanguageManager.shared.currentLanguage.goToButton , for: .normal)
        
    }
    
    @objc func selectq1opt1(sender:UITapGestureRecognizer) {
        self.q1opt1radio.isSelected = true
    }
    @objc func selectq1opt2(sender:UITapGestureRecognizer) {
        self.q1opt2radio.isSelected = true
    }
    @objc func selectq1opt3(sender:UITapGestureRecognizer) {
        self.q1opt3radio.isSelected = true
    }
    @objc func selectq1opt4(sender:UITapGestureRecognizer) {
        self.q1opt4radio.isSelected = true
    }
    
    @objc func selectq2opt1(sender:UITapGestureRecognizer) {
        self.q2opt1radio.isSelected = true
    }
    @objc func selectq2opt2(sender:UITapGestureRecognizer) {
        self.q2opt2radio.isSelected = true
    }
    @objc func selectq2opt3(sender:UITapGestureRecognizer) {
        self.q2opt3radio.isSelected = true
    }
    @objc func selectq2opt4(sender:UITapGestureRecognizer) {
        self.q2opt4radio.isSelected = true
    }
    
    @objc func selectq3opt1(sender:UITapGestureRecognizer) {
        self.q3opt1radio.isSelected = true
    }
    @objc func selectq3opt2(sender:UITapGestureRecognizer) {
        self.q3opt2radio.isSelected = true
    }
    @objc func selectq3opt3(sender:UITapGestureRecognizer) {
        self.q3opt3radio.isSelected = true
    }
    @objc func selectq3opt4(sender:UITapGestureRecognizer) {
        self.q3opt4radio.isSelected = true
    }
    
    fileprivate func handleQ1() {
        // UI updates on the main thread
        
        self.q1opt1radio.isHidden = true
        self.q1opt2radio.isHidden = true
        self.q1opt3radio.isHidden = true
        self.q1opt4radio.isHidden = true
        
        self.q1opt1.isHidden = true
        self.q1opt2.isHidden = true
        self.q1opt3.isHidden = true
        self.q1opt4.isHidden = true
        
        var q1SelectedOpt = 0
        
        if(self.q1opt1radio.isSelected){
            q1SelectedOpt = 1
            self.q1opt1.isHidden = false
            self.q1opt1.textColor = redColor
        }
        if(self.q1opt2radio.isSelected){
            q1SelectedOpt = 2
            self.q1opt2.isHidden = false
            self.q1opt2.textColor = redColor
        }
        if(self.q1opt3radio.isSelected){
            q1SelectedOpt = 3
            self.q1opt3.isHidden = false
            self.q1opt3.textColor = redColor
        }
        if(self.q1opt4radio.isSelected){
            q1SelectedOpt = 4
            self.q1opt4.isHidden = false
            self.q1opt4.textColor = redColor
        }
        
        if(LanguageManager.shared.currentLanguage.q1CorrectAnswer == 1){
            self.q1opt1.isHidden = false
            self.q1opt1.textColor = greenColor
        }
        if(LanguageManager.shared.currentLanguage.q1CorrectAnswer == 2){
            self.q1opt2.isHidden = false
            self.q1opt2.textColor = greenColor
        }
        if(LanguageManager.shared.currentLanguage.q1CorrectAnswer == 3){
            self.q1opt3.isHidden = false
            self.q1opt3.textColor = greenColor
        }
        if(LanguageManager.shared.currentLanguage.q1CorrectAnswer == 4){
            self.q1opt4.isHidden = false
            self.q1opt4.textColor = greenColor
        }
        
        self.q1Feedback.isHidden = false
        self.q1Feedback.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 10)
        if(q1SelectedOpt == LanguageManager.shared.currentLanguage.q1CorrectAnswer){
            self.q1Feedback.text = LanguageManager.shared.currentLanguage.correctAnswer
            self.q1Feedback.textColor = greenColor
        }else{
            self.q1Feedback.text = LanguageManager.shared.currentLanguage.incorrectAnswer
            self.q1Feedback.textColor = redColor
        }
    }
    
    fileprivate func handleQ2() {
        // UI updates on the main thread
        
        self.q2opt1radio.isHidden = true
        self.q2opt2radio.isHidden = true
        self.q2opt3radio.isHidden = true
        self.q2opt4radio.isHidden = true
        
        self.q2opt1.isHidden = true
        self.q2opt2.isHidden = true
        self.q2opt3.isHidden = true
        self.q2opt4.isHidden = true
        
        var q2SelectedOpt = 0
        
        if(self.q2opt1radio.isSelected){
            q2SelectedOpt = 1
            self.q2opt1.isHidden = false
            self.q2opt1.textColor = redColor
        }
        if(self.q2opt2radio.isSelected){
            q2SelectedOpt = 2
            self.q2opt2.isHidden = false
            self.q2opt2.textColor = redColor
        }
        if(self.q2opt3radio.isSelected){
            q2SelectedOpt = 3
            self.q2opt3.isHidden = false
            self.q2opt3.textColor = redColor
        }
        if(self.q2opt4radio.isSelected){
            q2SelectedOpt = 4
            self.q2opt4.isHidden = false
            self.q2opt4.textColor = redColor
        }
        
        if(LanguageManager.shared.currentLanguage.q2CorrectAnswer == 1){
            self.q2opt1.isHidden = false
            self.q2opt1.textColor = greenColor
        }
        if(LanguageManager.shared.currentLanguage.q2CorrectAnswer == 2){
            self.q2opt2.isHidden = false
            self.q2opt2.textColor = greenColor
        }
        if(LanguageManager.shared.currentLanguage.q2CorrectAnswer == 3){
            self.q2opt3.isHidden = false
            self.q2opt3.textColor = greenColor
        }
        if(LanguageManager.shared.currentLanguage.q2CorrectAnswer == 4){
            self.q2opt4.isHidden = false
            self.q2opt4.textColor = greenColor
        }
        
        self.q2feedback.isHidden = false
        self.q2feedback.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 10)
        if(q2SelectedOpt == LanguageManager.shared.currentLanguage.q2CorrectAnswer){
            self.q2feedback.text = LanguageManager.shared.currentLanguage.correctAnswer
            self.q2feedback.textColor = greenColor
        }else{
            self.q2feedback.text = LanguageManager.shared.currentLanguage.incorrectAnswer
            self.q2feedback.textColor = redColor
        }
    }
    
    fileprivate func handleQ3() {
        // UI updates on the main thread
        
        self.q3opt1radio.isHidden = true
        self.q3opt2radio.isHidden = true
        self.q3opt3radio.isHidden = true
        self.q3opt4radio.isHidden = true
        
        self.q3opt1.isHidden = true
        self.q3opt2.isHidden = true
        self.q3opt3.isHidden = true
        self.q3opt4.isHidden = true
        
        var q3SelectedOpt = 0
        
        if(self.q3opt1radio.isSelected){
            q3SelectedOpt = 1
            self.q3opt1.isHidden = false
            self.q3opt1.textColor = redColor
        }
        if(self.q3opt2radio.isSelected){
            q3SelectedOpt = 2
            self.q3opt2.isHidden = false
            self.q3opt2.textColor = redColor
        }
        if(self.q3opt3radio.isSelected){
            q3SelectedOpt = 3
            self.q3opt3.isHidden = false
            self.q3opt3.textColor = redColor
        }
        if(self.q3opt4radio.isSelected){
            q3SelectedOpt = 4
            self.q3opt4.isHidden = false
            self.q3opt4.textColor = redColor
        }
        
        if(LanguageManager.shared.currentLanguage.q3CorrectAnswer == 1){
            self.q3opt1.isHidden = false
            self.q3opt1.textColor = greenColor
        }
        if(LanguageManager.shared.currentLanguage.q3CorrectAnswer == 2){
            self.q3opt2.isHidden = false
            self.q3opt2.textColor = greenColor
        }
        if(LanguageManager.shared.currentLanguage.q3CorrectAnswer == 3){
            self.q3opt3.isHidden = false
            self.q3opt3.textColor = greenColor
        }
        if(LanguageManager.shared.currentLanguage.q3CorrectAnswer == 4){
            self.q3opt4.isHidden = false
            self.q3opt4.textColor = greenColor
        }
        
        self.q3feedback.isHidden = false
        self.q3feedback.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 10)
        if(q3SelectedOpt == LanguageManager.shared.currentLanguage.q3CorrectAnswer){
            self.q3feedback.text = LanguageManager.shared.currentLanguage.correctAnswer
            self.q3feedback.textColor = greenColor
        }else{
            self.q3feedback.text = LanguageManager.shared.currentLanguage.incorrectAnswer
            self.q3feedback.textColor = redColor
        }
    }
    
    @IBAction func sendClick(_ sender: UIButton) {
        UIView.animate(withDuration: 0.25, animations: { () -> Void in
            DispatchQueue.main.async {
                self.handleQ1()
                self.handleQ2()
                self.handleQ3()
                
                if(LanguageManager.shared.currentInjury != Injury.arrest){
                    self.goToNextBtn.isHidden = false
                }
                self.sendQuizBtn.isHidden = true
                self.backToMenuBtn.isHidden = false
                let desiredOffset = CGPoint(x: 0, y: 1)
                self.scrollViewContent.setContentOffset(desiredOffset, animated: true)
                
                LanguageManager.shared.currentInjury = LanguageManager.shared.currentInjury.next
            }
    })
    }
    
    
    
}

