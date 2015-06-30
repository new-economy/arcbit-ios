//
//  TLTextViewViewController.swift
//  ArcBit
//
//  Created by Timothy Lee on 3/14/15.
//  Copyright (c) 2015 Timothy Lee <stequald01@gmail.com>
//
//   This library is free software; you can redistribute it and/or
//   modify it under the terms of the GNU Lesser General Public
//   License as published by the Free Software Foundation; either
//   version 2.1 of the License, or (at your option) any later version.
//
//   This library is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//   Lesser General Public License for more details.
//
//   You should have received a copy of the GNU Lesser General Public
//   License along with this library; if not, write to the Free Software
//   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
//   MA 02110-1301  USA

import Foundation
import UIKit

@objc(TLTextViewViewController) class TLTextViewViewController:UIViewController {
    var text:String?
    @IBOutlet private var textView:UITextView?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setColors()
    
        self.textView!.backgroundColor = TLColors.mainAppColor()
        self.textView!.text = self.text
        self.textView!.textColor = (TLColors.mainAppOppositeColor())
        if(self.textView!.font != nil) {
            self.textView!.font = (UIFont(name:self.textView!.font.fontName, size:26.0))
        }
    }
}
