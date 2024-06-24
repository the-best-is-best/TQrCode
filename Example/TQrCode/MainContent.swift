//
//  MainContent.swift
//  TQrCode_Example
//
//  Created by MichelleRaouf on 23/06/2024.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import SwiftUI
import TQrCode

struct MainContent: View {
    @State private var newCode = ""
    var body: some View {
        VStack{
            QrCodeReaderView(scannedCode: $newCode).onChange(of: newCode) { _ in
                print(newCode)
                
            }
        }
    }
}

#Preview {
    MainContent()
}
