//
//  TestViewController.swift
//  MobileAds
//
//  Created by ANH VU on 16/03/2022.
//

import UIKit

public class TestViewController: UIViewController {

    @IBOutlet weak var imgTest: UIImageView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
       
        imgTest.image = UIImage(named: "ic_test", in: BundleAds.bundle(), compatibleWith: nil)
        // Do any additional setup after loading the view.
    }

}
