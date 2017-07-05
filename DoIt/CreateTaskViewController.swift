//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Michael Teti on 7/5/17.
//  Copyright © 2017 Michael Teti. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    @IBAction func addTapped(_ sender: Any) {
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        //Add new task toi array in preiovous ViewController
        previousVC.tasks.append(task)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
