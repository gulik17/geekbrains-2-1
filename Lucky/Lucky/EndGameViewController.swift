//
//  EndGameViewController.swift
//  Lucky
//
//  Created by Администратор on 22.04.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class EndGameViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func goToMainClick(_ sender: UIButton) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "MainScreen") else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        switch Game.shared.gameSession!.current + 1 {
        case 0...4:
            resultLabel.text = "0"
        case 5...9:
            resultLabel.text = "5K"
        case 10...14:
            resultLabel.text = "100K"
        case 15:
            resultLabel.text = "3M"
        default:
            resultLabel.text = "0"
        }
    }
}
