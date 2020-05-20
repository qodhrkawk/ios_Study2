//
//  ViewController.swift
//  DoIt_Chapter4_HW
//
//  Created by Yunjae Kim on 2020/05/19.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let timer: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    
    
    
    @IBOutlet weak var currentTime: UILabel!
    @IBOutlet weak var selectedTime: UILabel!
    
    var alarmtime : Date?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timer, userInfo: nil, repeats: true)
        
        
        
        
    }
    
    
    
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let datePicker = sender
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        selectedTime.text = formatter.string(from: datePicker.date)
        alarmtime = datePicker.date
        

    }
    
    @objc func updateTime(){
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat="yyyy-MM-dd HH:mm EEE"
        currentTime.text = formatter.string(from: date as Date)
        
        if(currentTime.text == selectedTime.text){
            view.backgroundColor = UIColor.red
            
        }
        else{
            view.backgroundColor = UIColor.white
        }
        
        
        
        
        
        
        
        
    }
    

}

