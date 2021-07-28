//
//  HomeViewController.swift
//  SatisBeer
//
//  Created by Giuseppe Diciolla on 28/07/21.
//

import Foundation
import UIKit

class HomeViewController {
    
    func setPromoBarHeight(isActive: Bool) -> CGFloat {
        if isActive {
            return 100
        }
        return 0
    }
}
