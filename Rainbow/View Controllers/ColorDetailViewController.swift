//
//  ColorDetailViewController.swift
//  Rainbow
//
//  Created by Lambda_School_Loaner_241 on 1/28/20.
//  Copyright © 2020 Lambda_School_Loaner_241. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var cellColor: MyColor?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    func updateViews(){
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }

  
}
