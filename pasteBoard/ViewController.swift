//
//  ViewController.swift
//  pasteBoard
//
//  Created by Tyobigoro on 2018/04/07.
//  Copyright © 2018年 Tyobigoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // サンプルラベル
    @IBOutlet weak var sampleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ラベルに値を設定する
        sampleLabel.text = "sampleString"
    }

    // ラベルの文字列をペーストボードに格納する。
    @IBAction func labelStringToPasteBoard(_ sender: UIButton) {
        let board = UIPasteboard.general
        board.setValue(sampleLabel.text as Any, forPasteboardType: "public.text")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

