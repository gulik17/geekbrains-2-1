//
//  CorrectViewController.swift
//  Lucky
//
//  Created by Администратор on 22.04.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class CorrectViewController: UIViewController {
    
    @IBOutlet weak var l15: UILabel!
    @IBOutlet weak var l14: UILabel!
    @IBOutlet weak var l13: UILabel!
    @IBOutlet weak var l12: UILabel!
    @IBOutlet weak var l11: UILabel!
    @IBOutlet weak var l10: UILabel!
    @IBOutlet weak var l9: UILabel!
    @IBOutlet weak var l8: UILabel!
    @IBOutlet weak var l7: UILabel!
    @IBOutlet weak var l6: UILabel!
    @IBOutlet weak var l5: UILabel!
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l1: UILabel!
    
    @IBAction func nextQuestionClick(_ sender: UIButton) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "GameScreen") else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        Game.shared.gameSession!.current += 1
        switch Game.shared.gameSession!.current {
        case 1:
            l2.backgroundColor = .white
            l2.textColor = .black
        case 2:
            l3.backgroundColor = .white
            l3.textColor = .black
        case 3:
            l4.backgroundColor = .white
            l4.textColor = .black
        case 4:
            l5.backgroundColor = .white
            l5.textColor = .black
        case 5:
            l6.backgroundColor = .white
            l6.textColor = .black
        case 6:
            l7.backgroundColor = .white
            l7.textColor = .black
        case 7:
            l8.backgroundColor = .white
            l8.textColor = .black
        case 8:
            l9.backgroundColor = .white
            l9.textColor = .black
        case 9:
            l10.backgroundColor = .white
            l10.textColor = .black
        case 10:
            l11.backgroundColor = .white
            l11.textColor = .black
        case 11:
            l12.backgroundColor = .white
            l12.textColor = .black
        case 12:
            l13.backgroundColor = .white
            l13.textColor = .black
        case 13:
            l14.backgroundColor = .white
            l14.textColor = .black
        case 14:
            l15.backgroundColor = .white
            l15.textColor = .black
        default:
            return
        }
    }
}
