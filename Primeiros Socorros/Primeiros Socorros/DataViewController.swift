//
//  DataViewController.swift
//  Primeiros Socorros
//
//  Created by Gabriel Otero on 13/03/18.
//  Copyright © 2018 Gabriel Otero. All rights reserved.
//

import UIKit

class DataViewController: SliderPageViewController {
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var imageStep: UIImageView!
    
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
        backBtn.setTitle(LanguageManager.shared.state.back, for: .normal)
        let image = LanguageManager.shared.currentInjury.name + self.index + LanguageManager.shared.state.currentLanguage
        imageStep.image = UIImage(named: image)

    }


}

