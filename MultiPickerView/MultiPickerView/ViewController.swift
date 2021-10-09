//
//  ViewController.swift
//  MultiPickerView
//
//  Created by Siyun Min on 2020/07/06.
//  Copyright © 2020 Siyun Min. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 40
    let PICKER_VIEW_COLUMN = 2
    let PICKER_VIEW_HEIGHT:CGFloat = 80
    
    var imageArray = [UIImage?]()
    var imageFileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpeg", "5.png", "6.jpg", "7.png", "8.jpg", "9.jpg", "10.jpg",
                         "11.jpg", "12.jpg", "13.jpg", "14.jpg", "15.png", "16.jpg", "17.jpg", "18.jpg", "19.jpg", "20.jpg",
                         "21.jpg", "22.jpg", "23.jpg", "24.jpg", "25.png", "26.jpg", "27.jpg", "28.jpg", "29.jpg", "30.jpg",
                         "31.jpg", "32.jpg", "33.jpg", "34.jpg", "35.jpg", "36.jpg", "37.jpg", "38.jpg", "39.jpg", "40.jpg"]
    
    @IBOutlet var imagePicker: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 0..<MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        lblImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0) {
            return imageFileName.count
        } else {
            return imageFileName.count
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        if(component == 0) {
            return PICKER_VIEW_HEIGHT
        } else {
            return PICKER_VIEW_HEIGHT
        }
        
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0) {
            return imageFileName[row]
        } else {
            return imageFileName[row]
        }

    }

//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//
//        if(component == 0) {
//            let imageView = UIImageView(image: imageArray[row])
//            imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 100)
//            return imageView
//        } else {
//            let imageView = UIImageView(image: imageArray[row])
//            imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 100)
//            return imageView
//        }
//
//    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(component == 0) {
            lblImageFileName.text = imageFileName[row]
        } else {
            imageView.image = imageArray[row]
        }
        
        
    }
    
}

