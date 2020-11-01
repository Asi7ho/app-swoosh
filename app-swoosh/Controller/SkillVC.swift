//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Yann Debain on 17/12/2017.
//  Copyright © 2017 Debain Yann. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player: Player!
    @IBOutlet weak var finishButton: ButtonBorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func selectedSkill(skillselected: String){
        player.selectedSkill = skillselected
        finishButton.isEnabled = true
    }
    
    @IBAction func BeginnerWasSelected(_ sender: Any) {
        selectedSkill(skillselected: "beginner")
    }
    
    @IBAction func BallerWasSelected(_ sender: Any) {
        selectedSkill(skillselected: "baller")
    }

}
