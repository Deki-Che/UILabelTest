//
//  ViewController.swift
//  UILabelTest
//
//  Created by Deki on 15/10/22.
//  Copyright © 2015年 Deki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // UILabel
        let label :UILabel = UILabel(frame:CGRect(x: 20, y: 20, width: 100, height: 100))
        label.text = "车车最帅恍恍惚惚和红红火火"
        // 设置多行属性
        label.numberOfLines = 2
        // 设置文本过长显示模式
        label.lineBreakMode = NSLineBreakMode.ByTruncatingMiddle
        // 根据文本框自动缩放字体大小，来显示所有文字
        //label.adjustsFontSizeToFitWidth = true
        // 设置字体大小
        label.font = UIFont.boldSystemFontOfSize(20)
        view.addSubview(label)
        
        let label2 = UILabel()
        label2.attributedText = self.attribute()
        label2.sizeToFit()
        label2.center = CGPoint(x: view.center.x, y: view.center.y)
        view.addSubview(label2)
    }
    
    
    func attribute() -> NSAttributedString {
        // 要现实的字符串
        let string = "人人为我 车车最帅" as NSString
        // 创建字符串属性
        let result = NSMutableAttributedString(string: string as String)
        // 前四个字的属性，包括 字体大小 字体颜色 背景颜色
        let attri1 = [
            NSFontAttributeName:UIFont.boldSystemFontOfSize(30),
            NSForegroundColorAttributeName:UIColor.redColor(),
            NSBackgroundColorAttributeName:UIColor.blueColor()
        ]
        // 阴影属性
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.darkGrayColor()
        shadow.shadowOffset = CGSize(width: 3, height: 3)
        
        // 后四个字的属性， 字体大小，颜色， 背景， 阴影
        let attri2 = [
            NSFontAttributeName:UIFont.boldSystemFontOfSize(30),
            NSForegroundColorAttributeName:UIColor.redColor(),
            NSBackgroundColorAttributeName:UIColor.blackColor(),
            NSShadowAttributeName:shadow
        ]
        // 给字符串附加属性样式
        result.setAttributes(attri1, range: string.rangeOfString("人人为我"))
        result.setAttributes(attri2, range: string.rangeOfString("车车最帅"))
        

        
        
        return NSAttributedString(attributedString: result)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

