//
//  GlobalColors.swift
//  DesignSystem
//
//  Created by Muhammad Hassan on 2025-04-17.
//

import SwiftUI
import Foundation

public protocol GlobalColors {
    var global0: ColorAsset { get }
    var global1: ColorAsset { get }
    var global2: ColorAsset { get }
    var global3: ColorAsset { get }
    var global4: ColorAsset { get }
    var global5: ColorAsset { get }
    var danger: ColorAsset { get }
    var alwaysWhite: ColorAsset { get }
    var alwaysBlack: ColorAsset { get }
    var alwaysGray: ColorAsset { get }
}

public extension GlobalColors {
    var global0: ColorAsset {
        ColorAsset(assetName: "global0")
    }
    
    var global1: ColorAsset {
        ColorAsset(assetName: "global1")
    }
    
    var global2: ColorAsset {
        ColorAsset(assetName: "global2")
    }
    
    var global3: ColorAsset {
        ColorAsset(assetName: "global3")
    }
    
    var global4: ColorAsset {
        ColorAsset(assetName: "global4")
    }
    
    var global5: ColorAsset {
        ColorAsset(assetName: "global5")
    }
    
    var danger: ColorAsset {
        ColorAsset(assetName: "danger")
    }
    
    var alwaysWhite: ColorAsset {
        ColorAsset(assetName: "alwaysWhite")
    }
    
    var alwaysBlack: ColorAsset {
        ColorAsset(assetName: "alwaysBlack")
    }
    
    var alwaysGray: ColorAsset {
        ColorAsset(assetName: "alwaysGray")
    }
}

public struct DefaultGlobalColors: GlobalColors {
    public init() { }
}

public struct ColorAsset {
    let assetName: String
    
    public init(assetName: String) {
        self.assetName = assetName
    }
    
    public var color: Color {
        Color(assetName, bundle: .module)
    }
    
    public var uiColor: UIColor {
        UIColor(named: assetName, in: .module, compatibleWith: nil) ?? .black
    }
}

public protocol BannerColors {
    var success: ColorAsset { get }
    var warning: ColorAsset { get }
    var warningIcon: ColorAsset { get }
    var error: ColorAsset { get }
    var information: ColorAsset { get }
    var informationIcon: ColorAsset { get }
}

public extension BannerColors {
    var success: ColorAsset {
        ColorAsset(assetName: "bannerSuccess")
    }
    
    var warning: ColorAsset {
        ColorAsset(assetName: "bannerWarning")
    }
    
    var warningIcon: ColorAsset {
        ColorAsset(assetName: "bannerWarningIcon")
    }
    
    var error: ColorAsset {
        ColorAsset(assetName: "bannerError")
    }
    
    var information: ColorAsset {
        ColorAsset(assetName: "bannerInformation")
    }
    
    var informationIcon: ColorAsset {
        ColorAsset(assetName: "bannerInformationIcon")
    }
}

public struct DefaultBannerColors: BannerColors {
    public init() { }
}
