//
//  PVSecurityKit.swift
//  Pods
//
//  Created by Guilherme Bayma on 7/14/17.
//
//

import Foundation

open class PVSecurityKit: NSObject {
    
    // Singleton
    open static let sharedInstance: PVSecurityKit = PVSecurityKit()
    
    private override init() {}
    
    open func saveNewPassword(_ pwd: String) -> Bool {
        return true
    }
    
    open func checkPassword(_ pwd: String) -> Bool {
        return true
    }
    
}
