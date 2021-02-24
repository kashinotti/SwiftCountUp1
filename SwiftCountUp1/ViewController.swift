//
//  ViewController.swift
//  SwiftCountUp1
//
//  Created by 大野　竜太 on 2021/02/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var countUpLabel: UILabel!
    
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        ラベルの文字を0と表示する
        countUpLabel.text = "0"
        
        
    }

    @IBAction func plus(_ sender: Any) {
        
        
//        カウントアップ
        count = count + 1
        
        
//        ラベルに文字を反映したい（数字）
        countUpLabel.text = String(count)
        
        
//        カウントが10以上になったら黄色に変更する
        
        if count >= 10{
            changeTextColor()
        }
        
        
    }
    
    
    @IBAction func minus(_ sender: Any) {
      
//        カウントダウン
        count = count - 1
        
//        ラベルに文字を反映したい（数字）
        countUpLabel.text = String(count)
        
        
        
//        カウントが0以下になったら白に変更する
        if count <= 0 {
            resetTextColor()
        }
        
        
    }
    
    
    func changeTextColor() {
        
        countUpLabel.textColor = .yellow
    }
    
    
    func resetTextColor() {
        
        countUpLabel.textColor = .white
    }
}

