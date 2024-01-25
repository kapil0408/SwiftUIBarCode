//
//  Alert.swift
//  SwiftUIBarCode
//
//  Created by Kapil Kumar on 25/01/24.
//

import SwiftUI

struct AlertItem: Identifiable
{
    var id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something is wrong with the camera. we are unable to capture the input.", dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type", message: "The value scanned is not valid. This app scans EAN-8 and EAN-13.", dismissButton: .default(Text("Ok")))

}
