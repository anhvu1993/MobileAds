//
//  AdsManager.swift
//  MobileAds
//
//  Created by ANH VU on 16/03/2022.
//

import Foundation
import UIKit

public class AdsManager {
   public static let shared = AdsManager()
    
    public func showTest(in vc: UIViewController) {
        let bundel = Bundle.init(for: Test2ViewController.self)
        let testVc = Test2ViewController(nibName: "Test2ViewController", bundle: bundel)
        vc.present(testVc, animated: true, completion: nil)
    }
    
    public func getMess() {
        print("create a framework demo")
        let image = UIImage(named: "ic_test", in: Bundle(for: type(of: self)), with: nil)
        print(image)
    }
}
