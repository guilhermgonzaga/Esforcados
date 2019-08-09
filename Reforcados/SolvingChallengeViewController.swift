//
//  SolvingChallengeViewController.swift
//  Reforcados
//
//  Created by student on 09/08/19.
//  Copyright © 2019 Hackatruck. All rights reserved.
//

import UIKit

class SolvingChallengeViewController: UIViewController {

    var challenge: Challenge?
    
    @IBOutlet weak var questionTextView: UITextView!
    
    @IBOutlet weak var firstAlternativeLabel: UILabel!
    
    
    @IBOutlet weak var secondAlternativeLabel: UILabel!
    
    
    @IBOutlet weak var thirdAlternativeLabel: UILabel!
    
    @IBOutlet weak var fourthAlternativeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
        
        
            
    //questionTextView.text = challenge.questions[]
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
