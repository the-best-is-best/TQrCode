//
//  GenerateQRCode.swift
//  TQrCode
//
//  Created by MichelleRaouf on 23/06/2024.
//
import SwiftUI
import UIKit
import CoreImage.CIFilterBuiltins

func generateQRCode(from string: String) -> UIImage {
    // Generate QR Code
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    let data = string.data(using: .ascii)
    
    filter.setValue(data, forKey: "inputMessage")
    guard let outputImage = filter.outputImage else { return UIImage() }
    
    // Render CIImage to UIImage with high quality
    let cgImage = context.createCGImage(outputImage, from: outputImage.extent)!
    let uiImage = UIImage(cgImage: cgImage, scale: UIScreen.main.scale, orientation: .up)
    
    return uiImage
}
