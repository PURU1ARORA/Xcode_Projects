//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
    }

    
    @IBOutlet weak var quesText: UILabel!
 
    @IBOutlet weak var optionA: UIButton!
    
    @IBOutlet weak var optionB: UIButton!
    
    @IBOutlet weak var optionC: UIButton!
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var ScoreCard: UILabel!
    
    var quizBrain = QuizBrain()
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        var userAns = sender.currentTitle!
        let gotItCorrect = quizBrain.checkAns(userAns: userAns)
        
        if gotItCorrect{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        
        if optionA.currentTitle == quizBrain.fetchAns(){
            optionA.backgroundColor = UIColor.green
        }
        if optionB.currentTitle == quizBrain.fetchAns(){
            optionB.backgroundColor = UIColor.green
        }
        if optionB.currentTitle == quizBrain.fetchAns(){
            optionB.backgroundColor = UIColor.green
        }
        
        quizBrain.nextQues()
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(UpdateUI), userInfo: nil, repeats: false)
        
        
        
    }
    
    
    
    
    
    @objc func UpdateUI(){
        quesText.text = quizBrain.getQues()
        optionA.setTitle(quizBrain.getOptionA(), for: .normal)
        optionB.setTitle(quizBrain.getOptionB(), for: .normal)
        optionC.setTitle(quizBrain.getOptionC(), for: .normal)
        optionA.backgroundColor = UIColor.clear
        optionB.backgroundColor = UIColor.clear
        optionC.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        ScoreCard.text = "Score = \(quizBrain.scoreTotal) / \(quizBrain.quesNum)"
    }
    
    
}

