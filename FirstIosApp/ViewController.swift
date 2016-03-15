//
//  ViewController.swift
//  FirstIosApp
//
//  Created by student on 3/15/16.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImageView: UIImageView!
    var monsters = ["Astro", "Fluffy", "Munchie", "Squido"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jokes = Jokes()
        for joke in jokes.jokes{
            print(joke)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeMonster(sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        monsterImageView.image = UIImage(named: monsters[index])
    }

}

