//
//  ViewController.swift
//  DemoBlock
//
//  Created by Hoàng Minh Thành on 9/22/16.
//  Copyright © 2016 Hoàng Minh Thành. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
//    var image = ["https://c4.staticflickr.com/9/8212/29223720923_599d862635_m.jpg",
//                 "https://c5.staticflickr.com/9/8529/29557048140_6503867c47_m.jpg",
//                 "https://c5.staticflickr.com/9/8440/29557048860_2050530237_m.jpg",
//                 "https://c5.staticflickr.com/9/8363/29557049140_a05753db3a_m.jpg",
//                 "https://c6.staticflickr.com/6/5343/29223721573_15106ff812_m.jpg",
//                 "https://c6.staticflickr.com/9/8105/29850071365_a45286f33b_m.jpg",
//                 "https://c4.staticflickr.com/9/8472/29850071595_ab82314491_m.jpg",
//                 "https://c2.staticflickr.com/9/8296/29223722073_0490251aba_m.jpg",
//                 "https://c6.staticflickr.com/9/8245/29850072125_8a4ecba479_m.jpg",
//                 "https://c8.staticflickr.com/6/5650/29850072415_0319816a23_m.jpg"]
    
    var path: String = ""
    var arrayKeys : NSArray!
    var dictData : NSDictionary!
    var anh : NSArray!
    var ten : NSArray!
    var vitri : NSArray!
    override func viewDidLoad() {
        super.viewDidLoad()
        path = Bundle.main.path(forResource: "Images", ofType: "plist")!
        dictData = NSDictionary(contentsOfFile: path)
        arrayKeys = dictData.allValues as NSArray!
        
        anh = arrayKeys.value(forKey: "anh") as! NSArray
        ten = arrayKeys.value(forKey: "ten") as! NSArray
        vitri = arrayKeys.value(forKey: "vitri") as! NSArray
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayKeys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        DispatchQueue.global().async(execute: {
            let stringUrl = self.anh[indexPath.row]
            let url = URL(string: stringUrl as! String)
            let data = try? Data(contentsOf: url!)
            DispatchQueue.main.async(execute: {
                cell.anh.image = UIImage(data: data!)
            })
        })
        cell.ten.text = ten[indexPath.row] as? String
        cell.vitri.text = vitri[indexPath.row] as? String
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

