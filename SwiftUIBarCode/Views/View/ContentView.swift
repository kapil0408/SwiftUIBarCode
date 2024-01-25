//
//  ContentView.swift
//  SwiftUIBarCode
//
//  Created by Kapil Kumar on 20/01/24.
//

import SwiftUI



struct ContentView: View {
    
   @StateObject var viewModel =  BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Rectangle().frame(maxWidth: .infinity, maxHeight: 300)
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer().frame(height: 60)
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder").font(.title)
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
