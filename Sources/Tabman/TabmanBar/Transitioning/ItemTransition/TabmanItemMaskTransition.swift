//
//  TabmanItemMaskTransition.swift
//  Tabman
//
//  Created by Merrick Sapsford on 14/03/2017.
//  Copyright © 2017 Merrick Sapsford. All rights reserved.
//

import UIKit
import Pageboy

class TabmanItemMaskTransition: TabmanItemTransition {
    
    override func transition(withPosition position: CGFloat,
                    direction: PageboyViewController.NavigationDirection,
                    minimumIndex: Int, maximumIndex: Int) {
        guard let bar = tabmanBar else { return }
        
        bar.contentView.layoutIfNeeded()
        bar.indicatorMaskView.frame = bar.indicator?.frame ?? .zero
    }
}
