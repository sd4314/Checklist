//
//  CheckListItem.swift
//  CheckList
//
//  Created by shweta dhawan on 20/05/19.
//  Copyright © 2019 Shweta. All rights reserved.
//

import Foundation

class CheckListItem{
    var text = " "
    var isChecked = false

	func toggleCheckmark() {
		isChecked = !isChecked
	}
}
