//
//  ViewController.swift
//  DoIT_Chapter3
//
//  Created by Yunjae Kim on 2020/05/14.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
       
    

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var btnResize: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "lamp_on")
        imgOff = UIImage(named: "lamp_off")
        
        imgView.image = imgOn
        
        
    }

    @IBAction func btnResizeImage(_ sender: Any) {
        let scale : CGFloat = 2.0
        var newWidth: CGFloat, newHeight : CGFloat
        
        if(isZoom){
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            btnResize.setTitle("확대", for: .normal)
        }
        else{
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            btnResize.setTitle("축소", for: .normal)
            
            
        }
        
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
        
        
        
    }
    
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        }
        else{
            imgView.image = imgOff
        }
        
    }
    
}

