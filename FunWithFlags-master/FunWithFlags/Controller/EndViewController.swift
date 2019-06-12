//
//  EndViewController.swift
//  FunWithFlags
//
//  Created by Baudynbay Aidana on 6/7/19.
//  Copyright © 2019 Victor. All rights reserved.
//

import UIKit

class EndViewController: UIViewController, UITableViewDataSource, UITableViewDelegate

{
     @IBOutlet weak var TableOfPlayers: UITableView!
    @IBOutlet weak var username: UITextField!
    
    var finalScore = ""
    var finalName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableOfPlayers.delegate = self
        TableOfPlayers.dataSource = self
    }
    
    
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let vc = FrontViewController()
    vc.name = self.finalName 
    return Int(finalScore) ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let vc = ViewController()
        vc.NFScore = self.finalScore
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! TableViewCell
        cell.setScoreBoardCell(username: finalName , score: finalScore)
        return cell
    }
    
    
    
    @IBAction func Press(_ sender: Any) {
        
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "FrontViewController") as! FrontViewController
        self.present(controller, animated: true)
    }
    
   
    
}
