//
//  ListTableViewController.swift
//  DemoDynamicPrototypes
//
//  Created by Chao Shin on 2018/4/29.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var products = [Information]()

    func initProducts() {
        products.append(Information(name: "【原味冰淇淋】", explainText: explainKeys.original , thumbnalImage:"Original_Thumbnal", imageName:"Original_Cup" ))
        products.append(Information(name: "【蜂巢冰淇淋】", explainText: explainKeys.honeyComb , thumbnalImage:"Honey_Comb_Thumbnal", imageName:"Honey_Comb_Cup" ))
        products.append(Information(name: "【巢蜜冰淇淋】", explainText: explainKeys.combHoney , thumbnalImage:"Comb_Honey_Thumbnal", imageName:"Comb_Honey_Cup" ))
        products.append(Information(name: "【濃縮咖啡】", explainText: explainKeys.affogato , thumbnalImage:"Affogato_Thumbnal", imageName:"Affogato_Cup" ))
        products.append(Information(name: "【有機棉花糖咖啡】", explainText: explainKeys.organicCottonCandyAffogato , thumbnalImage:"OrganicCotton_Candy_Affogato_Thumbnal", imageName:"Organic_Cotton_Candy_Affogato_Cup" ))
        products.append(Information(name: "【有機棉花糖】", explainText: explainKeys.organicCottonCandy , thumbnalImage:"Organic_Cotton_Candy_Thumbnal", imageName:"Organic_Cotton_Candy_Cup"))
        products.append(Information(name: "【有機混合穀粉】", explainText: explainKeys.organicMixedGrains , thumbnalImage:"Organic_Mix_Greins_Thumbnal",  imageName:"Organic_Mixed_Grains_Cup"))
        products.append(Information(name: "【黑巧克力淋醬】", explainText: explainKeys.darkChocolate , thumbnalImage:"Dark_Chocolate_Thumbnal",  imageName:"Dark_Chocolate_Cup" ))
        products.append(Information(name: "【巧克力球】", explainText: explainKeys.chocolateBeans , thumbnalImage:"Chocolate_Beans_Thumbnal", imageName:"Chocolate_Beans_Cup" ))
        products.append(Information(name: "【長崎蛋糕】", explainText: explainKeys.castellaCake , thumbnalImage:"Castella_Cake_Thumbnal", imageName:"Castella_Cake_Cup" ))
        products.append(Information(name: "【爆米花】", explainText: explainKeys.popCorn ,  thumbnalImage:"Pop_Corn_Thumbnal", imageName:"PopCorn_Cup" ))
        products.append(Information(name: "【鴛鴦奶茶】", explainText: explainKeys.yuanyangMilkTea , thumbnalImage:"Yuanyang_Milk_Tea_Thumbnal", imageName:"Yuanyang_Milk_Tea_Cup" ))
        products.append(Information(name: "【珍珠鴛鴦奶茶】", explainText: explainKeys.yuanyangMilkTeaWithBoba , thumbnalImage:"Yuanyang_Milk_Tea_With_Boba_Thumbnal", imageName:"Yuanyang_Milk_Tea_With_Boba_Cup" ))
        products.append(Information(name: "【培根巧克力】", explainText: explainKeys.baconWithChocolate , thumbnalImage:"Bacon_With_Chocolate_Thumbnal", imageName:"Bacon_With_Chocolate_Cup" ))
        products.append(Information(name: "【啾拿棒】", explainText: explainKeys.churros ,  thumbnalImage:"Churros_Thumbnal", imageName:"Churros_Cup" ))
        products.append(Information(name: "【杏片奶酒】", explainText: explainKeys.baileysOriginal , thumbnalImage:"Baileys_Original_Thumbnal",  imageName:"Baileys_Original_Cup" ))
        products.append(Information(name: "【提拉米蘇】", explainText: explainKeys.tiramisa , thumbnalImage:"Tiramisa_Thumbnal", imageName:"Tiramisa_Cup" ))
        products.append(Information(name: "【玫瑰跳跳糖】", explainText: explainKeys.roseJamWithPoppingCottonCandy , thumbnalImage:"Rose_Jam_With_Popping_Cotton_Candy_Thumbnal",  imageName:"Rose_Jam_With_Popping_Cotton_Candy_Cup" ))
        products.append(Information(name: "【百香果】", explainText: explainKeys.passionFruit , thumbnalImage:"Passion_Fruit_Thumbnal",  imageName:"Passion_Fruit_Cup" ))
        products.append(Information(name: "【榴槤脆果】", explainText: explainKeys.durianAppleMixed , thumbnalImage:"Durian_Apple_Mixed_Thumbnal",  imageName:"Durian_Apple_Mixed_Cup" ))
        products.append(Information(name: "【蜜糖脆片】", explainText: explainKeys.cerealMilk , thumbnalImage:"Cereal_Milk_Thumbnal", imageName:"Cereal_Milk_Cup" ))
        products.append(Information(name: "【馬卡龍】", explainText: explainKeys.macaroon , thumbnalImage:"Macaroon_Thumbnal", imageName:"Macaroon_Cup" ))
        products.append(Information(name: "【香蘭葉】", explainText: explainKeys.pandan , thumbnalImage:"Pandan_Thumbnal",  imageName:"Pandan_Cup" ))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initProducts()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return products.count
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let product = products[indexPath.row]   //現在是第幾個Cell

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "thumbnalCell", for: indexPath) as? ProductListTableViewCell else{   // 指定cell並轉型為剛剛建立的TableViewCell
            return UITableViewCell()   // 如失敗回傳UITableViewCell()
        }
/*      //方法一：直接修改
        cell.productNameLabel.text = product.name   // 更新Cell內Label的Text
        cell.thumbnalImageView.image = UIImage(named: product.thumbnalImage) // 更新Cell內Image View
 
        // 方拉二：呼叫在Cell裡的func，並傳入參數
        cell.updateUI(with: product)
*/
        // 方法三：呼叫在Cell裡的func
        cell.product = product
        cell.updateUI()
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "InstructionsSegue", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? InstructionsViewController, let row = tableView.indexPathForSelectedRow?.row {
            controller.product = products[row]
        }
    }


}
