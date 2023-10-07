//
//  ContentView.swift
//  BarcodeScannerPractice
//
//  Created by Mitch Andrade on 10/2/23.
//

import SwiftUI

struct AlertItem {
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    static let invalidDeviceInput = AlertItem(
        title: "Invalid Device Input",
        message: "Something is wrong with the camera, We are unable to capture the input.",
        dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(
        title: "Invalid Scan Type",
        message: "The value scanned is not valid. This app scans EAN-8 and EAN-13.",
        dismissButton: .default(Text("Ok")))
    
}

struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    @State private var alertItem: AlertItem?
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.system(size: 30, weight: .regular, design: .default))
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
                    .padding()
 
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
