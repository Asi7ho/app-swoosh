 //
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Yann Debain on 17/12/2017.
//  Copyright © 2017 Debain Yann. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    @IBOutlet weak var nextButton: ButtonBorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMenTapped(_ sender: Any) {
        selectedLeague(leagueType: "men")
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        selectedLeague(leagueType: "women")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectedLeague(leagueType: "coed")
    }
    
    func selectedLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
 }
