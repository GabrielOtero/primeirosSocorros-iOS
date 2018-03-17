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
        whatIsBtn.setTitle("What is", for: .normal)
        traumaBtn.setTitle("Trauma", for: .normal)
        chokeBtn.setTitle("Choking", for: .normal)
        seizureBtn.setTitle("Seizure", for: .normal)
        faintBtn.setTitle("Fainting", for: .normal)
        arrestBtn.setTitle("Cadiac Arrest", for: .normal)

        LanguageManager.shared.state = .english
    }
    
    @IBAction func changeToPortuguese(_ sender: UIButton) {
        whatIsBtn.setTitle("O que é", for: .normal)
        traumaBtn.setTitle("Trauma", for: .normal)
        chokeBtn.setTitle("Engasgo", for: .normal)
        seizureBtn.setTitle("Convulsão", for: .normal)
        faintBtn.setTitle("Desmaio", for: .normal)
        arrestBtn.setTitle("Parada Cardiaca", for: .normal)
        
        LanguageManager.shared.state = .portuguese
    }
    
    
    @IBAction func changeToSpanish(_ sender: UIButton) {
        whatIsBtn.setTitle("Que Son?", for: .normal)
        traumaBtn.setTitle("Trauma", for: .normal)
        chokeBtn.setTitle("Atoramiento", for: .normal)
        seizureBtn.setTitle("Convulsión", for: .normal)
        faintBtn.setTitle("Desmayo", for: .normal)
        arrestBtn.setTitle("Paro Cardiaco", for: .normal)
        
        LanguageManager.shared.state = .spanish
    }
    
}


