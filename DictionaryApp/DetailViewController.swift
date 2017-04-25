//
//  DetailViewController.swift
//  Dictionary App
//
//  Created by Chit Moe on 4/3/17.
//  Copyright © 2017 Chit Moe. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var nounLabel: UILabel!
    @IBOutlet weak var karenText: UILabel!
    
    var detailText = " "
    var nounText = " "
    var karenT = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        textLabel.textColor = UIColor.white
        textLabel.text = detailText
        nounLabel.textColor = UIColor.white
        nounLabel.text = nounText
        karenText.textColor = UIColor.white
        karenText.text = karenT
        karenText.font = UIFont(name: "knu", size: 35)
        // Do any additional setup after loading the view.
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
