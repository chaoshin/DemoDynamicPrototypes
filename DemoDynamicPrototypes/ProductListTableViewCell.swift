//
//  ProductListTableViewCell.swift
//  DemoDynamicPrototypes
//
//  Created by Chao Shin on 2018/4/29.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class ProductListTableViewCell: UITableViewCell {
    @IBOutlet weak var thumbnalImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
/*
    // 方拉二：呼叫在Cell裡的func，並傳入參數
    func updateUI(with product: Information) {
        productNameLabel.text = product.name   // 更新Cell內Label的Text
        thumbnalImageView.image = UIImage(named: product.thumbnalImage) // 更新Cell內Image View
    }
*/

    // 方法三：呼叫在Cell裡的func
    var product: Information!    
    func updateUI() {
        productNameLabel.text = product.name   // 更新Cell內Label的Text
        thumbnalImageView.image = UIImage(named: product.thumbnalImage) // 更新Cell內Image View
    }



    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
