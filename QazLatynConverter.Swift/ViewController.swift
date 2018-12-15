//
//  ViewController.swift
//  QazLatynConverter.Swift
//
//  Created  on 12/13/18.
//  Copyright © 2018 Til Qazyna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let tvCyrl = UITextView()
    let tvLatyn = UITextView()
    let btnClear = UIButton()
    let btnCopy = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()

        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        let viewWidth = Int(self.view.frame.size.width)
        let viewHeight = Int(self.view.frame.size.height)
        if (statusBarHeight==20)
        {
            //Add navigation bar
            let navBarSize = CGRect(x: 0, y: 0, width: viewWidth, height: 44)
            let navBar = UINavigationBar(frame: navBarSize)
            navBar.backgroundColor = UIColor(red:0.97, green:0.97, blue:0.97, alpha:1.0)
            self.view.addSubview(navBar)

            //Add tvCyrl
            tvCyrl.frame = CGRect(x: 1, y: 44, width: viewWidth-2, height: (viewHeight-94)/2)
            tvCyrl.layer.borderWidth = 1
            tvCyrl.layer.borderColor = UIColor.lightGray.cgColor
            tvCyrl.layer.masksToBounds = true
            tvCyrl.layer.cornerRadius = 5
            btnClear.frame = CGRect(x: 1, y: (viewHeight-94)/2-21, width: 20, height: 20)
            btnClear.setImage(UIImage(named: "cancel-512"), for: UIControl.State())
            btnClear.addTarget(self, action: #selector(ViewController.btnClearTap(_:)), for: UIControl.Event.touchUpInside)
            self.tvCyrl.addSubview(btnClear)
            self.view.addSubview(tvCyrl)
            //Add tvLatyn
            tvLatyn.frame = CGRect(x: 1, y: (viewHeight-94)/2+94, width: viewWidth-2, height: (viewHeight-94)/2)
            tvLatyn.layer.borderWidth = 1
            tvLatyn.layer.borderColor = UIColor.lightGray.cgColor
            tvLatyn.layer.masksToBounds = true
            tvLatyn.layer.cornerRadius = 5
            self.view.addSubview(tvLatyn)
            //Add button
            let btnCryl2Latyn = UIButton(type: .roundedRect)
            btnCryl2Latyn.frame = CGRect(x: (viewWidth-200)/2, y: (viewHeight-94)/2+54, width: 200, height: 30)
            btnCryl2Latyn.setTitle("Кирилл » Латын", for: UIControl.State())
            btnCryl2Latyn.layer.borderWidth = 1
            btnCryl2Latyn.layer.borderColor = UIColor.lightGray.cgColor
            btnCryl2Latyn.layer.masksToBounds = true
            btnCryl2Latyn.layer.cornerRadius = 7
            btnCryl2Latyn.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControl.Event.touchUpInside)
            self.view.addSubview(btnCryl2Latyn)
        }
        else
        {   //Add navigation bar
            let navBarSize:CGRect = CGRect(x: 0, y: 0, width: viewWidth, height: 66)
            let navBar: UINavigationBar = UINavigationBar(frame: navBarSize)
            navBar.backgroundColor = UIColor(red:0.97, green:0.97, blue:0.97, alpha:1.0)
            self.view.addSubview(navBar)
            //Add tvCyrl
            tvCyrl.frame = CGRect(x: 1, y: 44, width: viewWidth-2, height: (viewHeight-94)/2)
            tvCyrl.layer.borderWidth = 1
            tvCyrl.layer.borderColor = UIColor.lightGray.cgColor
            tvCyrl.layer.masksToBounds = true
            tvCyrl.layer.cornerRadius = 5
            btnClear.frame = CGRect(x: 1, y: (viewHeight-94)/2-21, width: 20, height: 20)
            let image = UIImage(named: "cancel-512")
            btnClear.setImage(image, for: UIControl.State())
            btnClear.addTarget(self, action: #selector(ViewController.btnClearTap(_:)), for: UIControl.Event.touchUpInside)
            self.tvCyrl.addSubview(btnClear)
            self.view.addSubview(tvCyrl)
            //Add tvLatyn
            tvLatyn.frame = CGRect(x: 1, y: (viewHeight-94)/2+94, width: viewWidth-2, height: (viewHeight-94)/2)
            tvLatyn.layer.borderWidth = 1
            tvLatyn.layer.borderColor = UIColor.lightGray.cgColor
            tvLatyn.layer.masksToBounds = true
            tvLatyn.layer.cornerRadius = 5
            self.view.addSubview(tvLatyn)
            //Add button
            let btnCryl2Latyn = UIButton(type: .roundedRect)
            btnCryl2Latyn.frame = CGRect(x: (viewWidth-200)/2, y: (viewHeight-94)/2+54, width: 200, height: 30)
            btnCryl2Latyn.setTitle("Кирилл » Латын", for: UIControl.State())
            btnCryl2Latyn.layer.borderWidth = 1
            btnCryl2Latyn.layer.borderColor = UIColor.lightGray.cgColor
            btnCryl2Latyn.layer.masksToBounds = true
            btnCryl2Latyn.layer.cornerRadius = 7
            btnCryl2Latyn.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControl.Event.touchUpInside)
            self.view.addSubview(btnCryl2Latyn)
        }
    }
    
    @objc func buttonTap (_ button:UIButton) {
        let cyrlText = tvCyrl.text ?? ""
        let latynText = QazLatynHelper.Cyrl2Latyn(cyrlText: cyrlText)
        tvLatyn.text = latynText
        self.tvCyrl.resignFirstResponder()
        self.tvLatyn.resignFirstResponder()
    }
    @objc func btnClearTap (_ button:UIButton){
        
        tvCyrl.text = ""
        tvLatyn.text = ""
    }
}

