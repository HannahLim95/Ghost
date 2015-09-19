//
//  ViewController.swift
//  Ghost
//
//  Created by Hannah Lim on 14-09-15.
//  Copyright (c) 2015 Hannah Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var labelPlayer1: UITextField!
    @IBOutlet weak var labelPlayer2: UITextField!
    @IBOutlet weak var labelEnterNames: UILabel!
    @IBOutlet weak var pickerViewPlayer1: UIPickerView!
    @IBOutlet weak var pickerViewPlayer2: UIPickerView!

    let namesPlayers = NSUserDefaults.standardUserDefaults()
    var names = ["hannah", "piet", "jan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonBeginGame(sender: AnyObject) {
        if (labelPlayer1.text != ""){
            if (labelPlayer2.text != ""){
                var playersList = namesPlayers.arrayForKey("players")
                var namePlayer1 = labelPlayer1.text
                playersList!.append(namePlayer1)
                var namePlayer2 = labelPlayer2.text
                playersList!.append(namePlayer2)
                namesPlayers.setObject(playersList!, forKey: "players")
                print(namesPlayers.arrayForKey("players")!)
            }
        }
    }
    
    override func prepareForSegue(segue:UIStoryboardSegue,sender: AnyObject?) {
        var dataviewController = segue.destinationViewController as! DataViewController
        dataviewController.playerName1 = labelPlayer1.text
        dataviewController.playerName2 = labelPlayer2.text
    }
    

    func numberOfComponentsInPickerView(pickerViewPlayer1: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerViewPlayer1: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return namesPlayers.arrayForKey("players")!.count;
    }
    
    func pickerView(pickerViewPlayer1: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return namesPlayers.arrayForKey("players")![row] as! String
    }
    func numberOfComponentsInPickerView2(pickerViewPlayer2: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView2(pickerViewPlayer2: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return namesPlayers.arrayForKey("players")!.count;
    }
    
    func pickerView2(pickerViewPlayer2: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return namesPlayers.arrayForKey("players")![row] as! String
    }
    
}
