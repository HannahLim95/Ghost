//
//  DataViewController.swift
//  Ghost
//
//  Created by Hannah Lim on 16-09-15.
//  Copyright (c) 2015 Hannah Lim. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var namePlayer1: UILabel!
    @IBOutlet weak var namePlayer2: UILabel!
    @IBOutlet weak var labelTurn: UILabel!
    @IBOutlet weak var enterLetter: UITextField!
    @IBOutlet weak var labelWord: UILabel!

    var playerName1: String?
    var playerName2: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namePlayer1.text = playerName1
        namePlayer2.text = playerName2

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressedOK(sender: AnyObject) {
        if(labelTurn.text == "Turn player 1"){
            labelTurn.text = "Turn player 2"
        }
        else{
            labelTurn.text = "Turn player 1"
        }
    }
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
