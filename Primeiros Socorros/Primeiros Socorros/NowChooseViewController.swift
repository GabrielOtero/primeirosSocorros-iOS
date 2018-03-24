//
//  NowChooseViewController.swift
//  Primeiros Socorros
//
//  Created by Gabriel Otero on 18/03/18.
//  Copyright © 2018 Gabriel Otero. All rights reserved.
//

import UIKit

class NowChooseViewController: SliderPageViewController {
    
    @IBOutlet weak var nowChosseBtn: UIButton!
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
        nowChosseBtn.setTitle(LanguageManager.shared.currentLanguage.nowAnswer, for: .normal)
        backToMenuBtn.setTitle(LanguageManager.shared.currentLanguage.backToMenu, for: .normal)
    }
}
