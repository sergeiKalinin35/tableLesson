//
//  ViewController.swift
//  tableLesson
//
//  Created by Sergey on 24.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var users = ["Rick", "Morty"]
    
    
    
    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
     
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userDetailsVC = segue.destination as? NextViewController else { return }
     //   userDetailsVC.userNameLabel.text = sender as? String
        userDetailsVC.userName = sender as? String
    }
    
    


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
        cell.textLabel?.text = users[indexPath.row]
        
        return cell
        
    }
}
