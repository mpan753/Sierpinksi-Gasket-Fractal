//
//  SierpinksiGasketView.swift
//  SierpinksiGasket
//
//  Created by Mia on 8/10/16.
//  Copyright © 2016 Mia. All rights reserved.
//

import UIKit

class SierpinksiGasketView: UIView {
    
    var squareColor: UIColor = UIColor.blueColor()
    var sierpinksGasketBackgroundColor: UIColor = UIColor.yellowColor()
    var n: Int = 0

    override func drawRect(rect: CGRect) {
        let path = UIBezierPath(rect: rect)
        sierpinksGasketBackgroundColor.setFill()
        path.fill()
        
        drawSierpinskiGasket(n, inRect: rect)
    }
    
    func sierpinskiGasketImage(n: Int, drawRect rect: CGRect) -> UIImage {

        let size = rect.size
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        let path = UIBezierPath(rect: CGRect(origin: CGPointZero, size: size))
        
        UIColor.yellowColor().setFill()
        path.fill()
        
        drawSierpinskiGasket(6, inRect: CGRect(origin: CGPointZero, size: size))
        
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

    func drawSierpinskiGasket(n: Int, inRect rect: CGRect) {
        // Base case
        if n == 0 {
            drawSquare(rect)
            return
        }
        
        let topLeftPoint: CGPoint = rect.origin
        let topMidPoint: CGPoint = CGPoint(x: rect.midX, y: topLeftPoint.y)
        let centerPoint: CGPoint = CGPoint(x: rect.midX, y: rect.midY)
        let size = CGSize(width: rect.width / 2.0, height: rect.height / 2.0)
        
        // draw top-left square
        drawSierpinskiGasket(n-1, inRect: CGRect(origin: topLeftPoint, size: size))
        
        // draw top-right square
        drawSierpinskiGasket(n-1, inRect: CGRect(origin: topMidPoint, size: size))
        
        // draw bottom-right sqaure
        drawSierpinskiGasket(n-1, inRect: CGRect(origin: centerPoint, size: size))
    }
    
    func drawSquare(rect: CGRect) {
        let squarePath = UIBezierPath(rect: rect)
        squareColor.setFill()
        squarePath.fill()
    }

}
