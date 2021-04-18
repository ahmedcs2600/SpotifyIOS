//
//  Extensions.swift
//  Spotify
//
//  Created by macbook on 18/04/2021.
//

import UIKit
import Foundation

extension UIView {
    var width : CGFloat {
        return frame.size.width
    }
    
    var height : CGFloat {
        return frame.size.height
    }
    
    var left : CGFloat {
        return frame.origin.x
    }
    
    var right : CGFloat {
        return left + width
    }
    
    var top : CGFloat {
        return frame.origin.y
    }
    
    var bottom : CGFloat {
        return top + height
    }
}
