//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Michael Teti on 7/5/17.
//  Copyright © 2017 Michael Teti. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    @IBOutlet weak var taskLabel: UILabel!

    var task = Task()
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            taskLabel?.text = "❗️\(task.name)"
        } else {
            taskLabel?.text = task.name
        }

    }
    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        //Force tableView reload
        previousVC.tableView.reloadData()
        //Navigate back to main VC
        navigationController!.popViewController(animated: true)
    }
    
    

}
