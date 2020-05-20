//
//  ViewController.swift
//  DoIt_Chapter5
//
//  Created by Yunjae Kim on 2020/05/14.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 9
    let PICKER_VIEW_COLUMN = 1
    var imgFileName = ["picture1","picture2","picture3","picture4","picture5","picture6","picture7","picture8","picture9"]
    
  //  var imageArray = [UIImage?]()
    

    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var imageFileName: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        for i in 0..<MAX_ARRAY_NUM {
//            let image = UIImage(named: imgFileName[i])
//            imageArray.append(image)
//
//        }
        imageFileName.text = imgFileName[0]
       // imgView.image = imageArray[0]
        imgView.image = UIImage(named: imgFileName[0])
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imgFileName.count
    }
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imgFileName[row]
//
//    }
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image : UIImage(named: imgFileName[row]))
        
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        
        return imageView
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imageFileName.text = imgFileName[row]
//        imgView.image = imageArray[row]
        imgView.image = UIImage(named: imgFileName[row])
        
    }

    
    
    

}

