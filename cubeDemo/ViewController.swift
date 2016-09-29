//
//  ViewController.swift
//  cubeDemo
//
//  Created by elevenjian on 16/7/20.
//  Copyright © 2016年 elevenjian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    
    @IBOutlet var faces: [UIView]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var transform3D = CATransform3DIdentity
        transform3D.m34 = -1.0/500.0
        transform3D = CATransform3DRotate(transform3D, CGFloat(M_PI_4), 1, 0, 0)
        transform3D = CATransform3DRotate(transform3D, CGFloat(M_PI_4), 0, 1, 0)

        container.layer.sublayerTransform = transform3D
        
        
        var transform = CATransform3DMakeTranslation(0, 0, 50)
        addFace(0, transform: transform)
        
        transform = CATransform3DMakeTranslation(50, 0, 0)
        transform = CATransform3DRotate(transform, CGFloat(M_PI_2), 0, 1, 0)
        addFace(1, transform: transform)
        
        transform = CATransform3DMakeTranslation(0, -50, 0)
        transform = CATransform3DRotate(transform, CGFloat(M_PI_2), 1, 0, 0)
        addFace(2, transform: transform)

        transform = CATransform3DMakeTranslation(0,50, 0)
        transform = CATransform3DRotate(transform, CGFloat(M_PI_2), 1, 0, 0)
        addFace(3, transform: transform)

        transform = CATransform3DMakeTranslation(-50, 0, 0)
        transform = CATransform3DRotate(transform, CGFloat(M_PI_2), 0, 1, 0)
        addFace(4, transform: transform)
        
        transform = CATransform3DMakeTranslation(0, 0, -50)
        transform = CATransform3DRotate(transform, CGFloat(M_PI), 0, 1, 0)
        addFace(5, transform: transform)
        
        


    }
    
    
    func addFace(index:Int,transform:CATransform3D) {
        let face = faces[index]
        let containerSize = container.bounds.size
        face.bounds = CGRectMake(0, 0, 100, 100)
        face.center = CGPointMake(containerSize.width/2.0, containerSize.height/2.0)
        face.layer.transform = transform
        container.addSubview(face)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

