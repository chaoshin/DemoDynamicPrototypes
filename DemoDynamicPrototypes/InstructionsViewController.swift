//
//  InstructionsViewController.swift
//  DemoDynamicPrototypes
//
//  Created by Chao Shin on 2018/4/30.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {
    
    @IBOutlet weak var prdouctLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    var product: Information?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let text = product?.explainText, let path = product?.imageName {
            prdouctLabel.text = text
            productImageView.image = UIImage(named: "\(path)")
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
