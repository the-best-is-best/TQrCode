import SwiftUI

public struct QRCodeGeneratorView: View {
    let data: String
    let logo: String?
    
    public init(data: String, logo: String? = nil) {
        self.data = data
        self.logo = logo
    }
    
    public var body: some View {
        VStack {
            // Generate QR code image
            Image(uiImage: generateQRCode(from: data)) // Generate QR code without logo first
                .interpolation(.none) // Optional: Prevent blurring of the QR code image
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                .overlay(
                    // Overlay logo if provided
                    logo.flatMap { logoName in
                        Image(logoName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                    }
                )
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct QRCodeView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeGeneratorView(data: "121", logo: "logoImageName")
    }
}
