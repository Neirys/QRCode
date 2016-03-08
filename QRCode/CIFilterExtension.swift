//
//  CIFilterExtension.swift
//  Example
//
//  Created by Jaiouch Yaman - Société ID-APPS on 04/02/2016.
//  Copyright © 2016 Alexander Schuch. All rights reserved.
//

import Foundation

internal extension CIFilter {
    class func QRCodeGeneratorFilter(data data: NSData, errorCorrection: String) -> CIFilter {
        let filter = CIFilter(name: "CIQRCodeGenerator")!
        filter.setValue(data, forKey: "inputMessage")
        filter.setValue(errorCorrection, forKey: "inputCorrectionLevel")
        
        return filter
    }
    
    class func maskToAlphaFilter() -> CIFilter {
        return CIFilter(name: "CIMaskToAlpha")!
    }
    
    class func falseColorFilter(color0 color0: CIColor?, color1: CIColor?) -> CIFilter {
        let filter = CIFilter(name: "CIFalseColor")!
        
        if let color0 = color0 {
            filter.setValue(color0, forKey: "inputColor0")
        }
        
        if let color1 = color1 {
            filter.setValue(color1, forKey: "inputColor1")
        }
        
        return filter
    }
    
    class func whiteAndBlackFilter() -> CIFilter {
        return self.falseColorFilter(color0: CIColor(color: .whiteColor()), color1: CIColor(color: .blackColor()))
    }
}