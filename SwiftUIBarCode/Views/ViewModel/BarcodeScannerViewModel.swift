//
//  BarcodeScannerViewModel.swift
//  SwiftUIBarCode
//
//  Created by Kapil Kumar on 25/01/24.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" :   scannedCode
    }
    
    var statusColor: Color {
        scannedCode.isEmpty ? .red :  .green
    }
}
