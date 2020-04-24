//
//  ViewController.swift
//  Lucky
//
//  Created by Администратор on 18.04.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Game.shared.gameSession = GameSession()
        // Do any additional setup after loading the view.
    }


}

