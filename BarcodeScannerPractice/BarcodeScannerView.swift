//
//  ContentView.swift
//  BarcodeScannerPractice
//
//  Created by Mitch Andrade on 10/2/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .background(.black)
                    .frame(width: .infinity, height: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.system(size: 30, weight: .regular, design: .default))
                
                Text("Not Yet Scanned")
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .foregroundColor(.red)
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
