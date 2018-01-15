//
//  GradientView.swift
//
//  Created by Roman Siro on 06.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

class GradientView: UIView {
    
    var color: UIColor = UIColor.white {
        didSet {
           makeGradient()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        makeGradient()
    }
    
    private func makeGradient() {
        let clear = color.withAlphaComponent(0)
        
        let startPoint = CGPoint(x: 0.5, y: 0)
        let endPoint = CGPoint(x: 0.5, y: 1)
        
        fillWithGradient(startColor: clear, endColor: color, startPoint: startPoint, endPoint: endPoint)
    }
    
    func redrawGradient() {
        layer.sublayers?.forEach{$0.removeFromSuperlayer()}
        makeGradient()
    }

}
