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
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //Save to CoreData
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //Navigate back to main VC
        navigationController!.popViewController(animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
