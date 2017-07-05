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
    
    @IBAction func addTapped(_ sender: Any) {
        //View from CoreData
        let context = (UIApplication.shared.delegate as! AppDelegate)
        
        let task = Task(context: context.persistentContainer.viewContext)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //Save to CoreData
        context.saveContext()
        
        //Navigate back to main VC
        navigationController!.popViewController(animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
