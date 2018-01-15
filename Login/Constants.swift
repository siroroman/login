//
//  Constants.swift
//
//  Created by Roman Siro on 04.09.17.
//  Copyright © 2017 Roman Siro. All rights reserved.
//

import UIKit

struct Constants {
    //Colors
    struct Colors {
        static var white: UIColor {
            return UIColor(hexString: "ffffff")
        }
        
        static var green: UIColor {
            return UIColor(hexString: "00cc7d")
        }
        
        static var turquoise: UIColor {
            return UIColor(hexString: "0fc3d0")
        }
        
        static var blue: UIColor {
            return UIColor(hexString: "539fe0")
        }
        
        static var red: UIColor {
            return UIColor(hexString: "f53960")
        }
        
        static var warningRed: UIColor {
            return UIColor(hexString: "f53650")
        }
        
        static var orange: UIColor {
            return UIColor(hexString: "f1a143")
        }
        
        static var mint: UIColor {
            return UIColor(hexString: "60dbc0")
        }

        static var navBarBlack: UIColor {
            return UIColor(hexString: "49545f")
        }
        
        static var regularText: UIColor {
            return UIColor(hexString: "474747")
        }
        
        static var lighText: UIColor {
            return UIColor(hexString: "909090")
        }
        
        static var lineGray: UIColor {
            return UIColor(hexString: "d0d0d0")
        }
        
        static var framesGray: UIColor {
            return UIColor(hexString: "e1e1e1")
        }
        
        static var backgroundGray: UIColor {
            return UIColor(hexString: "f5f5f5")
        }

        
        static var backgroundLightGray: UIColor {
            return UIColor(hexString: "fafafa")
        }
 
        
    }
    
    
    //Fonts
    struct Fonts {
        static func light (size: CGFloat) -> UIFont {
            return UIFont.systemFont(ofSize:size)
        }
        
        static func regular(size: CGFloat) -> UIFont {
           return UIFont.systemFont(ofSize:size)
        }
        
        static func medium(size: CGFloat) -> UIFont {
           return UIFont.systemFont(ofSize:size)
        }
        
        static func bold(size: CGFloat) -> UIFont {
           return UIFont.systemFont(ofSize:size)
        }
    }
    
    //Styles
    struct Styles {
        static var button: LabelStyle {
            return LabelStyle(font: Fonts.regular(size: 12),
                    color: Constants.Colors.white,
                    allCaps:true)
        }
        
        
        static var basicText: LabelStyle {
            return LabelStyle(font: Fonts.regular(size: 13),
                    color: Constants.Colors.regularText,
                    allCaps:false)
        }
        
        static var basicTextBold: LabelStyle {
            return LabelStyle(font: Fonts.bold(size: 14),
                    color: Constants.Colors.regularText,
                    allCaps:false)
        }
        
        static var caption: LabelStyle {
            return LabelStyle(font: Fonts.regular(size: 13),
                    color: Constants.Colors.lighText,
                    allCaps:false)
        }
        
        static var sectionTitle: LabelStyle {
            return LabelStyle(font: Fonts.regular(size: 12),
                    color: Constants.Colors.lighText,
                    allCaps:true)
        }
        
        static var title: LabelStyle {
            return LabelStyle(font: Fonts.regular(size: 21),
                    color: Constants.Colors.white,
                    allCaps:false)
        }
        
        static var navbar: LabelStyle {
            return LabelStyle(font: Fonts.medium(size: 16),
                    color: Constants.Colors.regularText,
                    allCaps:false)
        }
        
        static var heroTextLight: LabelStyle {
            return LabelStyle(font: Fonts.light(size: 14),
                    color: Constants.Colors.regularText,
                    allCaps:false)
        }
        
        static var inputFieldCaption: LabelStyle {
            return LabelStyle(font: Fonts.regular(size: 12),
                    color: Constants.Colors.lighText,
                    allCaps:false)
        }
        
        static var inputPlaceholder: LabelStyle {
            return LabelStyle(font: Fonts.regular(size: 14),
                    color: Constants.Colors.regularText,
                    allCaps:false)
        }
        
        static var inputText: LabelStyle {
            return LabelStyle(font: Fonts.regular(size: 15),
                    color: Constants.Colors.regularText,
                    allCaps:false)
        }
    }
    
    //Storyboards
    struct Storyboards {
        static var  main: UIStoryboard {
            return UIStoryboard(name: "Main", bundle: nil)
        }
    }
    
    //UI
    struct UI {
        static var  cornerRadius: CGFloat {
            return 2.0
        }
    }
}
