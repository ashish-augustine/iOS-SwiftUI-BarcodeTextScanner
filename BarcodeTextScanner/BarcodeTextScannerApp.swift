//
//  BarcodeTextScannerApp.swift
//  BarcodeTextScanner
//
//  Created by Ashish Augustine on 6/25/22.
//

import SwiftUI

@main
struct BarcodeTextScannerApp: App {
    
    @StateObject private var vm = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
                .task {
                    await vm.requestDataScannerAccessStatus()
                }
        }
    }
}
