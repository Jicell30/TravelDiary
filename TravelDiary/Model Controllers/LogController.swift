//
//  LogController.swift
//  TravelDiary
//
//  Created by Jicell on 9/22/22.
//

import Foundation

class LogController {
    
    //Sigleton:To ensure that we are with the same instance of our logs array we created a singleton and will pass around this specific instance of our log controller
    
    //MARK: -Singleton
    static let sharedInstance = LogController()
    
    //MARK: - Source of Thruth ( single )
    var logs: [Log] = []
    
    // MARK: -CRUD
    
    func create(title: String, address: String, body: String) {
        let log = Log(title: title, address: address, body: body)
        logs.append(log)
    }
    
    func update(logToUpdate: Log, newAddress: String, newBody: String, newTitle: String) {
        logToUpdate.title = newTitle
        logToUpdate.address = newAddress
        logToUpdate.body = newBody
        logToUpdate.logDate = Date()
    }
    
    func delete(logToDelete:Log) {
        guard let indexOfLogToDelete = logs.firstIndex(of: logToDelete) else {return}
        logs.remove(at: indexOfLogToDelete)
    }
    
} //End of class
