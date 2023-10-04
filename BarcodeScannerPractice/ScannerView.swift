//
//  ScannerView.swift
//  BarcodeScannerPractice
//
//  Created by Mitch Andrade on 10/4/23.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
   
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {
        
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate {
        func didFind(barcode: String) {
            print(barcode)
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
    }
    
}

#Preview {
    ScannerView()
}
