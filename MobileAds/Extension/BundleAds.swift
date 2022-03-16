//
//  Bundle.swift
//  MobileAds
//
//  Created by ANH VU on 16/03/2022.
//

import Foundation
import UIKit
//Bundle(for: type(of: self))
open class BundleAds {
    open class func podBundleImage(named: String) -> UIImage? {
        let podBundle = Bundle(for: BundleAds.self)
        if let url = podBundle.url(forResource: "TestViewController", withExtension: "bundle") {
            let bundle = Bundle(url: url)
            return UIImage(named: named, in: bundle, compatibleWith: nil)
        }
        return nil
    }
    
    class func bundle() -> Bundle {
        let podBundle = Bundle(for: BundleAds.self)
        if let url = podBundle.url(forResource: "MobileAds", withExtension: "bundle") {
            let bundle = Bundle(url: url)
            return bundle ?? podBundle
        }
        return podBundle
    }
}

public extension UIViewController {

    //** loads instance from right framework bundle, not main bundle as UIViewController.init() does
    private static func genericInstance<T: UIViewController>() -> T {
        return T.init(nibName: String(describing: self), bundle: Bundle(for: self))
    }

    static func instance() -> Self {
        return genericInstance()
    }
}

