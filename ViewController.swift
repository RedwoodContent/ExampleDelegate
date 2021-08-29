//
//  ViewController.swift
//  ExampleDelegate
//
//  Created by Amanda on 8/28/21.
//

import UIKit
class ViewController: UIViewController, ModelDelegate {
    
    // instaniate the model and set the processStatus
    var myModel = Model()
    var processStatus: String = ""
    
    @IBOutlet var statusField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goButton(_ sender: UIButton) {
        // Call startProcess in the myModel object
        print("debug: calling myModel.startProcess")
        processStatus = myModel.startProcess()
        statusField.text = processStatus
    }
    
    func updateView() {
        print("debug: about to update view")
    }
    
}

