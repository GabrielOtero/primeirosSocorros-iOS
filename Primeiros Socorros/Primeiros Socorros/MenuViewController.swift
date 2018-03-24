//
//  RootViewController.swift
//  Primeiros Socorros
//
//  Created by Gabriel Otero on 13/03/18.
//  Copyright © 2018 Gabriel Otero. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    var pageViewController: UIPageViewController?
    
    @IBOutlet weak var englishBtn: UIButton!
    @IBOutlet weak var portugueseBtn: UIButton!
    @IBOutlet weak var spanishBtn: UIButton!
    
    @IBOutlet weak var whatIsBtn: UIButton!
    @IBOutlet weak var traumaBtn: UIButton!
    @IBOutlet weak var chokeBtn: UIButton!
    @IBOutlet weak var seizureBtn: UIButton!
    @IBOutlet weak var faintBtn: UIButton!
    @IBOutlet weak var arrestBtn: UIButton!
    
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
        
        switch LanguageManager.shared.currentLanguage {
            case .english:
                setEnglishLanguage()
            case .portuguese:
                setPortugueseLanguage()
            case .spanish:
                setSpanishLanguage()
        }
    }
    
    fileprivate func setEnglishLanguage() {
        whatIsBtn.setTitle(LanguageManager.shared.currentLanguage.whatIs, for: .normal)
        traumaBtn.setTitle(LanguageManager.shared.currentLanguage.trauma, for: .normal)
        chokeBtn.setTitle(LanguageManager.shared.currentLanguage.choking, for: .normal)
        seizureBtn.setTitle(LanguageManager.shared.currentLanguage.seizure, for: .normal)
        faintBtn.setTitle(LanguageManager.shared.currentLanguage.fainting, for: .normal)
        arrestBtn.setTitle(LanguageManager.shared.currentLanguage.arrest, for: .normal)
    }
    
    @IBAction func changeToEnglish(_ sender: UIButton) {
        LanguageManager.shared.currentLanguage = .english
        setEnglishLanguage()
    }
    
    fileprivate func setPortugueseLanguage() {
        whatIsBtn.setTitle(LanguageManager.shared.currentLanguage.whatIs, for: .normal)
        traumaBtn.setTitle(LanguageManager.shared.currentLanguage.trauma, for: .normal)
        chokeBtn.setTitle(LanguageManager.shared.currentLanguage.choking, for: .normal)
        seizureBtn.setTitle(LanguageManager.shared.currentLanguage.seizure, for: .normal)
        faintBtn.setTitle(LanguageManager.shared.currentLanguage.fainting, for: .normal)
        arrestBtn.setTitle(LanguageManager.shared.currentLanguage.arrest, for: .normal)
    }
    
    @IBAction func changeToPortuguese(_ sender: UIButton) {
        LanguageManager.shared.currentLanguage = .portuguese
        setPortugueseLanguage()
    }
    
    
    fileprivate func setSpanishLanguage() {
        whatIsBtn.setTitle(LanguageManager.shared.currentLanguage.whatIs, for: .normal)
        traumaBtn.setTitle(LanguageManager.shared.currentLanguage.trauma, for: .normal)
        chokeBtn.setTitle(LanguageManager.shared.currentLanguage.choking, for: .normal)
        seizureBtn.setTitle(LanguageManager.shared.currentLanguage.seizure, for: .normal)
        faintBtn.setTitle(LanguageManager.shared.currentLanguage.fainting, for: .normal)
        arrestBtn.setTitle(LanguageManager.shared.currentLanguage.arrest, for: .normal)
    }
    
    @IBAction func changeToSpanish(_ sender: UIButton) {
        LanguageManager.shared.currentLanguage = .spanish
        setSpanishLanguage()
    }
    
    @IBAction func whatIsClick(_ sender: UIButton) {
        LanguageManager.shared.currentInjury = .whatIs
    }
    @IBAction func traumaClick(_ sender: UIButton) {
        LanguageManager.shared.currentInjury = .trauma
    }
    @IBAction func chokingClick(_ sender: UIButton) {
        LanguageManager.shared.currentInjury = .choking
    }
    @IBAction func seizureClick(_ sender: UIButton) {
        LanguageManager.shared.currentInjury = .seizure
    }
    @IBAction func faintClick(_ sender: UIButton) {
        LanguageManager.shared.currentInjury = .fainting
    }
    @IBAction func arrestClick(_ sender: UIButton) {
        LanguageManager.shared.currentInjury = .arrest
    }
}


