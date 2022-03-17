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
        let bundel = Bundle.init(for: TestViewController.self)
        let testVc = TestViewController(nibName: "TestViewController", bundle: bundel)
        vc.present(testVc, animated: true, completion: nil)
    }
}
