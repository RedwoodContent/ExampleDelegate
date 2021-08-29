//
//  Model.swift
//  SimplifiedDelegate
//

import Foundation

protocol ModelDelegate {
    func updateView()
}

class Model {
    
    var delegate: ModelDelegate?
    
    func startProcess() -> String {
        
        if let del = delegate {
            del.updateView()
            return "delegation successful"
        } else {
            return "delegation failed"
        }
    }
}
