//
//  ViewController.swift
//  DoIt_Chapter3_HW
//
//  Created by Yunjae Kim on 2020/05/14.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    private var index = 0
    
    
    @IBOutlet weak var imgView: UIImageView!
    
    private var pictures : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPictures()
    

    }
    

    
    func setPictures(){
        guard let pic1 = UIImage(named: "picture1") else { return }
        guard let pic2 = UIImage(named: "picture2") else { return }
        guard let pic3 = UIImage(named: "picture3") else { return }
        guard let pic4 = UIImage(named: "picture4") else { return }
        guard let pic5 = UIImage(named: "picture5") else { return }
        guard let pic6 = UIImage(named: "picture6") else { return }
        imgView.image = pic1
        
        pictures = [pic1,pic2,pic3,pic4,pic5,pic6]
        
    }
    
    
    
    @IBAction func btnPrev(_ sender: Any) {
        if(index == 0){
            return
        }
        else{
            index -= 1
            imgView.image = pictures[index]
            
        }
    
    }
    
    
    @IBAction func btnNext(_ sender: Any) {
        if(index == pictures.count-1){
            return
        }
        else{
            index += 1
            imgView.image = pictures[index]
        }
        
        
    }
    
    


}

