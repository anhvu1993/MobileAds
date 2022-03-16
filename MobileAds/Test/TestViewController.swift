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
    
    public init() {
        super.init(nibName: "TestViewController", bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
