//
//  BViewController.swift
//  DelegateSample
//
//  Created by ycsong on 2021/11/22.
//

import UIKit

protocol CustomDelegate {
    func returnValue(vc: BViewController, text: String?)
}

class BViewController: UIViewController {
    
    @IBOutlet weak var tf: UITextField!
    var delegate: CustomDelegate!
    
    @IBAction func click(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
        self.delegate.returnValue(vc: self, text: tf.text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
