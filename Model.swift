//
//  Model.swift
//  ExampleDelegate
//
//  Created by Amanda on 8/28/21.
//

// The model doesn't do much of anything

import Foundation

// Protocol for updating the view
protocol ModelDelegate {
    func updateView()
}

class Model {
    
    var delegate: ModelDelegate?
    
    func startProcess() -> String {
        print("debug: startProcess called")
        if let del = delegate {
            del.updateView()
            return "delegation successful"
        } else {
            return "delegation failed"
        }
    }
}
