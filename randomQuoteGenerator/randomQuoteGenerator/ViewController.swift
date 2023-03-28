//
//  ViewController.swift
//  randomQuoteGenerator
//
//  Created by Geun Woo Park on 2023/03/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "남에겐 관대하게, 나에겐 야박하게", name: "박근우"),
        Quote(contents: "편견이란 실효성이 없는 의견이다.", name: "암브로스 빌"),
        Quote(contents: "분노는 바보들의 가슴속에서만 살아간다.", name: "아인슈타인"),
        Quote(contents: "몇 번이라도 좋다! 이 끔찍한 생이여...다시!", name: "니체"),
        Quote(contents: "인생은 멀리서 보면 희극이고 가까이서 보면 비극이다.", name: "찰리 채플린")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGenerator(_ sender: Any) {
        let random = Int(arc4random_uniform(5)) // creates a random real number between 0 and 4
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

