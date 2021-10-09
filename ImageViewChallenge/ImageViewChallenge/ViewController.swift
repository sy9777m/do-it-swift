//
//  ViewController.swift
//  ImageViewChallenge
//
//  Created by Siyun Min on 2020/06/30.
//  Copyright © 2020 Siyun Min. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageViewer: UIImageView!
    
    var index = 0
    var imgList: [String] = ["apple.jpg", "apple2.png", "apple3.png"]
    var currentImg: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentImg = UIImage(named: imgList[index])
        imageViewer.image = currentImg
        // Do any additional setup after loading the view.
    }


    @IBAction func btnBeforeAction(_ sender: UIButton) {
        if(index == 0) {
        } else {
            index -= 1
            currentImg = UIImage(named: imgList[index])
            imageViewer.image = currentImg
        }
    }
    
    @IBAction func btnNextAction(_ sender: UIButton) {
        if(index == imgList.count) {
            
        } else {
            index += 1
            currentImg = UIImage(named: imgList[index])
            imageViewer.image = currentImg
        }
    }
}

