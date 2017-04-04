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
    
    var detailText = " "
    var nounText = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = detailText
        nounLabel.text = nounText
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
