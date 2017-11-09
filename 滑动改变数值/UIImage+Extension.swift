//
//  UIImage+Extension.swift
//  滑动改变数值
//
//  Created by 高诚 on 2017/11/8.
//  Copyright © 2017年 高诚. All rights reserved.
//

import UIKit

extension UIImage {
  static func originImage(image:UIImage,scaleSize size:CGSize)->UIImage {
        UIGraphicsBeginImageContext(size)
    let minsize:CGFloat = min(size.width, size.height)
    let rect = CGRect(origin: .zero, size: size)
    UIBezierPath(roundedRect: rect, cornerRadius: minsize/2).addClip()
    image.draw(in: rect)
        let scaleImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return scaleImage!
    }
    
    
}
