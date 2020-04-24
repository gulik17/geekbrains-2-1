//
//  GameViewController.swift
//  Lucky
//
//  Created by Администратор on 21.04.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var ABtn: UIButton!
    @IBOutlet weak var BBtn: UIButton!
    @IBOutlet weak var CBtn: UIButton!
    @IBOutlet weak var DBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let gameSession = Game.shared.gameSession else {return}
        let obj = gameSession.qObj
        updateElements(obj: obj)
    }
    
    func updateElements(obj: [QuestionStruct]) {
        guard let gameSession = Game.shared.gameSession else {return}
        let cur = gameSession.current
        Question.text = obj[cur].q
        ABtn.setTitle(obj[cur].a1, for: .normal)
        BBtn.setTitle(obj[cur].a2, for: .normal)
        CBtn.setTitle(obj[cur].a3, for: .normal)
        DBtn.setTitle(obj[cur].a4, for: .normal)
        
        ABtn.tag = (obj[cur].t1) ? 1 : 0
        BBtn.tag = (obj[cur].t2) ? 1 : 0
        CBtn.tag = (obj[cur].t3) ? 1 : 0
        DBtn.tag = (obj[cur].t4) ? 1 : 0
    }
    
    func enableControl(_ action: Bool) {
        ABtn.isUserInteractionEnabled = action
        BBtn.isUserInteractionEnabled = action
        CBtn.isUserInteractionEnabled = action
        DBtn.isUserInteractionEnabled = action
    }
    
    func checkQuestion(_ sender: UIButton) {
        sender.backgroundColor = .yellow
        enableControl(false)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            sender.backgroundColor = (sender.tag == 1) ? .green : .red
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            if sender.tag == 1 && Game.shared.gameSession!.current < 14 {
                guard let vc = self.storyboard?.instantiateViewController(identifier: "CorrectAnswer") else {return}
                self.navigationController?.pushViewController(vc, animated: true)
            } else {
                guard let vc = self.storyboard?.instantiateViewController(identifier: "EndGameAnswer") else {return}
                self.navigationController?.pushViewController(vc, animated: true)
            }
            self.enableControl(true)
        }
        
    }

    @IBAction func AClick(_ sender: UIButton) {
        checkQuestion(sender)
    }
    
    @IBAction func BClick(_ sender: UIButton) {
        checkQuestion(sender)
    }

    @IBAction func CClick(_ sender: UIButton) {
        checkQuestion(sender)
    }

    @IBAction func DClick(_ sender: UIButton) {
        checkQuestion(sender)
    }
    
    @IBAction func closeGameClick(_ sender: UIButton) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "MainScreen") else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
