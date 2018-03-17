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
    
    @IBAction func changeToEnglish(_ sender: UIButton) {
        LanguageManager.shared.state = .english
        
        whatIsBtn.setTitle(LanguageManager.shared.state.whatIs, for: .normal)
        traumaBtn.setTitle(LanguageManager.shared.state.trauma, for: .normal)
        chokeBtn.setTitle(LanguageManager.shared.state.choking, for: .normal)
        seizureBtn.setTitle(LanguageManager.shared.state.seizure, for: .normal)
        faintBtn.setTitle(LanguageManager.shared.state.fainting, for: .normal)
        arrestBtn.setTitle(LanguageManager.shared.state.arrest, for: .normal)
    }
    
    @IBAction func changeToPortuguese(_ sender: UIButton) {
        LanguageManager.shared.state = .portuguese
        
        whatIsBtn.setTitle(LanguageManager.shared.state.whatIs, for: .normal)
        traumaBtn.setTitle(LanguageManager.shared.state.trauma, for: .normal)
        chokeBtn.setTitle(LanguageManager.shared.state.choking, for: .normal)
        seizureBtn.setTitle(LanguageManager.shared.state.seizure, for: .normal)
        faintBtn.setTitle(LanguageManager.shared.state.fainting, for: .normal)
        arrestBtn.setTitle(LanguageManager.shared.state.arrest, for: .normal)
    }
    
    
    @IBAction func changeToSpanish(_ sender: UIButton) {
        LanguageManager.shared.state = .spanish
        
        whatIsBtn.setTitle(LanguageManager.shared.state.whatIs, for: .normal)
        traumaBtn.setTitle(LanguageManager.shared.state.trauma, for: .normal)
        chokeBtn.setTitle(LanguageManager.shared.state.choking, for: .normal)
        seizureBtn.setTitle(LanguageManager.shared.state.seizure, for: .normal)
        faintBtn.setTitle(LanguageManager.shared.state.fainting, for: .normal)
        arrestBtn.setTitle(LanguageManager.shared.state.arrest, for: .normal)
    }
    
//    @IBAction func whatIsClick(_ sender: UIButton) {
//        LanguageManager.shared.injury = .whatIs
//    }
//
//    @IBAction func traumaClick(_ sender: UIButton) {
//        LanguageManager.shared.injury = .trauma
//    }
}


