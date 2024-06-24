//
//  TQrCode.swift
//  TQrCode
//
//  Created by MichelleRaouf on 23/06/2024.
//

import SwiftUI

public struct QrCodeReaderView: View {
     var scannedCode: Binding<String>

    public init(scannedCode: Binding<String>) {
        self.scannedCode = scannedCode
    }
    
    public  var body: some View {
        CodeScannerView(
                            codeTypes: [.qr],
                            simulatedData: "https://example.com/qrcode",
                            completion: { result in
                                if case let .success(code) = result {
                                    self.scannedCode.wrappedValue = code.string
                                }
                            }
                        )
    }
}

#Preview {
    QrCodeReaderView(scannedCode: .constant(""))
}
