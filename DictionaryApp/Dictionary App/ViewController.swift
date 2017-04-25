//
//  ViewController.swift
//  Dictionary App
//
//  Created by Chit Moe on 3/30/17.
//  Copyright © 2017 Chit Moe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    static var lines = [String]()
    static var lines2 = [String]()
    static var lines3 = [String]()
    var searchStatue: Bool = false
    var filtered: [String] = []
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readFile(filename: "English", type: "txt")
        readFile2(filename: "Howtosay", type: "txt")
        readFile3(filename: "Karen", type: "txt")
        print(ViewController.lines.count)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue",
        let detailVC = segue.destination as?
            DetailViewController {
            detailVC.detailText = ViewController.lines[selectedIndex]
            detailVC.title = ViewController.lines[selectedIndex]
            detailVC.nounText = ViewController.lines2[selectedIndex]
            detailVC.karenT = ViewController.lines3[selectedIndex]
        }
    }
    
    func readFile(filename: String, type: String) {
        let filepath = Bundle.main.path(forResource: filename, ofType: type)
        do
        {
            let contents = try String(contentsOfFile: filepath!)
            ViewController.lines = contents.components(separatedBy: "\n")
        }
        catch
        {
            
        }
    }
    func readFile2(filename: String, type: String) {
        let filepath = Bundle.main.path(forResource: filename, ofType: type)
        do
        {
            let contents = try String(contentsOfFile: filepath!)
            ViewController.lines2 = contents.components(separatedBy: "\n")
        }
        catch
        {
            
        }
    }
    func readFile3(filename: String, type: String) {
        let filepath = Bundle.main.path(forResource: filename, ofType: type)
        do
        {
            let contents = try String(contentsOfFile: filepath!)
            ViewController.lines3 = contents.components(separatedBy: "\n")
        }
        catch
        {
            // contents could not be loaded
        }
    }
}

extension ViewController: UISearchBarDelegate {
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchStatue = true
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchStatue = false
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchStatue = false
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchStatue = false
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filtered = ViewController.lines.filter ({ (text) -> Bool in
            let tmp: NSString = text as NSString
            let range = tmp.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            return range.location != NSNotFound
        })
        if(filtered.count == 0){
            searchStatue = false;
        } else {
            searchStatue = true;
        }
        self.tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "detailSegue", sender: self)
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(searchStatue) {
            return filtered.count
        }
        return ViewController.lines.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if(searchStatue){
            selectedIndex = indexPath.row
            cell.textLabel?.text = filtered[selectedIndex]
            
        } else {
            cell.textLabel?.text = ViewController.lines[indexPath.row];
            
        }
        return cell
    }
}
