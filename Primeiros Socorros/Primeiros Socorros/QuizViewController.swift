//
//  AsdViewController.swift
//  Primeiros Socorros
//
//  Created by Gabriel Otero on 18/03/18.
//  Copyright © 2018 Gabriel Otero. All rights reserved.
//

import UIKit
import DLRadioButton
import FirebaseAnalytics

class QuizPageViewController: UIViewController {
    
    @IBOutlet weak var q1Label: UILabel!
    @IBOutlet weak var q2Label: UILabel!
    @IBOutlet weak var q3Label: UILabel!
    @IBOutlet weak var q4Label: UILabel!
    @IBOutlet weak var q5Label: UILabel!
    @IBOutlet weak var q6Label: UILabel!
    
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
    
    @IBOutlet weak var q4opt1: UILabel!
    @IBOutlet weak var q4opt2: UILabel!
    @IBOutlet weak var q4opt3: UILabel!
    @IBOutlet weak var q4opt4: UILabel!
    
    @IBOutlet weak var q5opt1: UILabel!
    @IBOutlet weak var q5opt2: UILabel!
    @IBOutlet weak var q5opt3: UILabel!
    @IBOutlet weak var q5opt4: UILabel!
    
    @IBOutlet weak var q6opt1: UILabel!
    @IBOutlet weak var q6opt2: UILabel!
    @IBOutlet weak var q6opt3: UILabel!
    @IBOutlet weak var q6opt4: UILabel!
    
    
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
    
    @IBOutlet weak var q4opt1radio: DLRadioButton!
    @IBOutlet weak var q4opt2radio: DLRadioButton!
    @IBOutlet weak var q4opt3radio: DLRadioButton!
    @IBOutlet weak var q4opt4radio: DLRadioButton!
    
    @IBOutlet weak var q5opt1radio: DLRadioButton!
    @IBOutlet weak var q5opt2radio: DLRadioButton!
    @IBOutlet weak var q5opt3radio: DLRadioButton!
    @IBOutlet weak var q5opt4radio: DLRadioButton!
    
    @IBOutlet weak var q6opt1radio: DLRadioButton!
    @IBOutlet weak var q6opt2radio: DLRadioButton!
    @IBOutlet weak var q6opt3radio: DLRadioButton!
    @IBOutlet weak var q6opt4radio: DLRadioButton!
    
    
    
    @IBOutlet weak var q1Feedback: UILabel!
    @IBOutlet weak var q2feedback: UILabel!
    @IBOutlet weak var q3feedback: UILabel!
    @IBOutlet weak var q4feedback: UILabel!
    @IBOutlet weak var q5feedback: UILabel!
    @IBOutlet weak var q6feedback: UILabel!
    
    
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    
    @IBOutlet weak var q4StackView: UIStackView!
    @IBOutlet weak var q5StackView: UIStackView!
    @IBOutlet weak var q6StackView: UIStackView!
    @IBOutlet weak var buttonStackView: UIStackView!
    
    
    weak var timer: Timer?
    
    let greenColor = UIColor.green
    let redColor = UIColor.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        q1Label.text = LanguageManager.shared.currentLanguage.q1
        q2Label.text = LanguageManager.shared.currentLanguage.q2
        q3Label.text = LanguageManager.shared.currentLanguage.q3
        q4Label.text = LanguageManager.shared.currentLanguage.q4
        q5Label.text = LanguageManager.shared.currentLanguage.q5
        q6Label.text = LanguageManager.shared.currentLanguage.q6
        
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
        
        q4opt1.text = LanguageManager.shared.currentLanguage.q4opt1
        q4opt2.text = LanguageManager.shared.currentLanguage.q4opt2
        q4opt3.text = LanguageManager.shared.currentLanguage.q4opt3
        q4opt4.text = LanguageManager.shared.currentLanguage.q4opt4
        
        q5opt1.text = LanguageManager.shared.currentLanguage.q5opt1
        q5opt2.text = LanguageManager.shared.currentLanguage.q5opt2
        q5opt3.text = LanguageManager.shared.currentLanguage.q5opt3
        q5opt4.text = LanguageManager.shared.currentLanguage.q5opt4
        
        q6opt1.text = LanguageManager.shared.currentLanguage.q6opt1
        q6opt2.text = LanguageManager.shared.currentLanguage.q6opt2
        q6opt3.text = LanguageManager.shared.currentLanguage.q6opt3
        q6opt4.text = LanguageManager.shared.currentLanguage.q6opt4
        
        backToMenuBtn.isHidden = true
        goToNextBtn.isHidden = true
        
        self.q1Feedback.isHidden = true
        self.q2feedback.isHidden = true
        self.q3feedback.isHidden = true
        self.q4feedback.isHidden = true
        self.q5feedback.isHidden = true
        self.q6feedback.isHidden = true
        
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
    
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq4opt1))
        q4opt1.isUserInteractionEnabled = true
        q4opt1.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq4opt2))
        q4opt2.isUserInteractionEnabled = true
        q4opt2.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq4opt3))
        q4opt3.isUserInteractionEnabled = true
        q4opt3.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq4opt4))
        q4opt4.isUserInteractionEnabled = true
        q4opt4.addGestureRecognizer(tap)
    
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq5opt1))
        q5opt1.isUserInteractionEnabled = true
        q5opt1.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq5opt2))
        q5opt2.isUserInteractionEnabled = true
        q5opt2.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq5opt3))
        q5opt3.isUserInteractionEnabled = true
        q5opt3.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq5opt4))
        q5opt4.isUserInteractionEnabled = true
        q5opt4.addGestureRecognizer(tap)
        ////
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq6opt1))
        q6opt1.isUserInteractionEnabled = true
        q6opt1.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq6opt2))
        q6opt2.isUserInteractionEnabled = true
        q6opt2.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq6opt3))
        q6opt3.isUserInteractionEnabled = true
        q6opt3.addGestureRecognizer(tap)
        
        tap = UITapGestureRecognizer(target: self, action: #selector(QuizPageViewController.selectq6opt4))
        q6opt4.isUserInteractionEnabled = true
        q6opt4.addGestureRecognizer(tap)
        
        backToMenuBtn.setTitle(LanguageManager.shared.currentLanguage.backToMenu, for: .normal)
        sendQuizBtn.setTitle(LanguageManager.shared.currentLanguage.send, for: .normal)
        goToNextBtn.setTitle(LanguageManager.shared.currentLanguage.goToButton , for: .normal)
        
        if(LanguageManager.shared.currentInjury != Injury.arrest){
            q4StackView.isHidden = true
            q5StackView.isHidden = true
            q6StackView.isHidden = true
        }
        
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
    @objc func selectq4opt1(sender:UITapGestureRecognizer) {
        self.q4opt1radio.isSelected = true
    }
    @objc func selectq4opt2(sender:UITapGestureRecognizer) {
        self.q4opt2radio.isSelected = true
    }
    @objc func selectq4opt3(sender:UITapGestureRecognizer) {
        self.q4opt3radio.isSelected = true
    }
    @objc func selectq4opt4(sender:UITapGestureRecognizer) {
        self.q4opt4radio.isSelected = true
    }
    @objc func selectq5opt1(sender:UITapGestureRecognizer) {
        self.q5opt1radio.isSelected = true
    }
    @objc func selectq5opt2(sender:UITapGestureRecognizer) {
        self.q5opt2radio.isSelected = true
    }
    @objc func selectq5opt3(sender:UITapGestureRecognizer) {
        self.q5opt3radio.isSelected = true
    }
    @objc func selectq5opt4(sender:UITapGestureRecognizer) {
        self.q5opt4radio.isSelected = true
    }
    @objc func selectq6opt1(sender:UITapGestureRecognizer) {
        self.q6opt1radio.isSelected = true
    }
    @objc func selectq6opt2(sender:UITapGestureRecognizer) {
        self.q6opt2radio.isSelected = true
    }
    @objc func selectq6opt3(sender:UITapGestureRecognizer) {
        self.q6opt3radio.isSelected = true
    }
    @objc func selectq6opt4(sender:UITapGestureRecognizer) {
        self.q6opt4radio.isSelected = true
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
        
        var feedbaackLabel = ""
        self.q1Feedback.isHidden = false
        self.q1Feedback.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 10)
        if(q1SelectedOpt == LanguageManager.shared.currentLanguage.q1CorrectAnswer){
            self.q1Feedback.text = LanguageManager.shared.currentLanguage.correctAnswer
            self.q1Feedback.textColor = greenColor
            feedbaackLabel = "right"
        }else{
            self.q1Feedback.text = LanguageManager.shared.currentLanguage.incorrectAnswer
            self.q1Feedback.textColor = redColor
            feedbaackLabel = "wrong"
        }
        
        let event = "\(LanguageManager.shared.currentInjury.name)" + "_q1_" + "\(feedbaackLabel)"
        Analytics.logEvent(event, parameters: nil)
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
        
        var feedbaackLabel = ""
        self.q2feedback.isHidden = false
        self.q2feedback.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 10)
        if(q2SelectedOpt == LanguageManager.shared.currentLanguage.q2CorrectAnswer){
            self.q2feedback.text = LanguageManager.shared.currentLanguage.correctAnswer
            self.q2feedback.textColor = greenColor
            feedbaackLabel = "right"
        }else{
            self.q2feedback.text = LanguageManager.shared.currentLanguage.incorrectAnswer
            self.q2feedback.textColor = redColor
            feedbaackLabel = "wrong"
        }
        
        let event = "\(LanguageManager.shared.currentInjury.name)" + "_q2_" + "\(feedbaackLabel)"
        Analytics.logEvent(event, parameters: nil)
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
        
        var feedbaackLabel = ""
        self.q3feedback.isHidden = false
        self.q3feedback.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 10)
        if(q3SelectedOpt == LanguageManager.shared.currentLanguage.q3CorrectAnswer){
            self.q3feedback.text = LanguageManager.shared.currentLanguage.correctAnswer
            self.q3feedback.textColor = greenColor
            feedbaackLabel = "right"
        }else{
            self.q3feedback.text = LanguageManager.shared.currentLanguage.incorrectAnswer
            self.q3feedback.textColor = redColor
            feedbaackLabel = "wrong"
        }
        
        let event = "\(LanguageManager.shared.currentInjury.name)" + "_q3_" + "\(feedbaackLabel)"
        Analytics.logEvent(event, parameters: nil)
    }
    
    func q1Selected() -> Bool{
        return q1opt1radio.isSelected ||
        q1opt2radio.isSelected ||
        q1opt3radio.isSelected ||
        q1opt4radio.isSelected
    }
    
    func q2Selected() -> Bool{
        return q2opt1radio.isSelected ||
            q2opt2radio.isSelected ||
            q2opt3radio.isSelected ||
            q2opt4radio.isSelected
    }
    
    func q3Selected() -> Bool{
        return q3opt1radio.isSelected ||
            q3opt2radio.isSelected ||
            q3opt3radio.isSelected ||
            q3opt4radio.isSelected
    }
    
    @IBAction func sendClick(_ sender: UIButton) {
        if(!q1Selected() || !q2Selected() || !q3Selected()){
            UIView.animate(withDuration: 0.25, animations: { () -> Void in
                DispatchQueue.main.async {
                    let desiredOffset = CGPoint(x: 0, y: 1)
                    self.scrollViewContent.setContentOffset(desiredOffset, animated: true)
                }
            })
            return
        }
        
        UIView.animate(withDuration: 0.25, animations: { () -> Void in
            DispatchQueue.main.async {
                let desiredOffset = CGPoint(x: 0, y: 0)
                self.scrollViewContent.setContentOffset(desiredOffset, animated: true)
            }
        })
        
        timer = Timer.scheduledTimer(timeInterval: 0.24, target: self, selector: #selector(QuizPageViewController.handleQuestion), userInfo: nil, repeats: true)
    }
    
    @objc func handleQuestion()
    {
        timer?.invalidate()
        UIView.animate(withDuration: 0.25, animations: { () -> Void in
            DispatchQueue.main.async {
                let desiredOffset = CGPoint(x: 0, y: 1)
                self.scrollViewContent.setContentOffset(desiredOffset, animated: true)

                self.handleQ1()
                self.handleQ2()
                self.handleQ3()

                if(LanguageManager.shared.currentInjury != Injury.arrest){
                    self.goToNextBtn.isHidden = false
                }
                self.sendQuizBtn.isHidden = true
                self.backToMenuBtn.isHidden = false

                LanguageManager.shared.currentInjury = LanguageManager.shared.currentInjury.next
            }
        })
    }
}

