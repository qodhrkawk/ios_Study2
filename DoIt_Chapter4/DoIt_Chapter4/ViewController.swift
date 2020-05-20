//
//  ViewController.swift
//  DoIt_Chapter4
//
//  Created by Yunjae Kim on 2020/05/14.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    
    @IBOutlet weak var currentTime: UILabel!
    
    @IBOutlet weak var pickerTime: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
        
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        
        let datePicerView = sender
        
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        pickerTime.text = "선택시간 : "+formatter.string(from: datePicerView.date)
    
    }
    @objc func updateTime(){

        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        currentTime.text = "현재시간 : "+formatter.string(from: date as Date)
        
    }
    
    
    
    
}

