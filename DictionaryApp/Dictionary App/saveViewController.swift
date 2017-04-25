//
//  saveViewController.swift
//  Dictionary App
//
//  Created by Chit Moe on 4/24/17.
//  Copyright © 2017 Chit Moe. All rights reserved.
//

import UIKit

class saveViewController: UIViewController {
    
    let saved = ViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(saved.saveSearch)
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
extension saveViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return saved.saveSearch.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        cell.textLabel?.text = saved.saveSearch[indexPath.row]
        return cell
    }

}
extension saveViewController: UITableViewDelegate {
    
}
