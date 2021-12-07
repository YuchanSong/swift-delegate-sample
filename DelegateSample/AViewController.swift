//
//  ViewController.swift
//  DelegateSample
//
//  Created by ycsong on 2021/11/22.
//

import UIKit

class AViewController: UIViewController {
    
    @IBOutlet weak var tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func click(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "BViewController") as? BViewController else { return }
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
    }
}

extension AViewController: CustomDelegate {
    func returnValue(vc: BViewController, text: String?) {
        vc.dismiss(animated: false, completion: { [weak self] in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.tf.text = text
            }
        })
    }
}
