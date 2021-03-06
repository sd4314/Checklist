//
//  ToDoList.swift
//  CheckList
//
//  Created by shweta dhawan on 25/05/19.
//  Copyright © 2019 Shweta. All rights reserved.
//

import Foundation


class ToDoList {
	var todos : [CheckListItem] = []

	init() {
		let row0Item = CheckListItem()
		let row1Item = CheckListItem()
		let row2Item = CheckListItem()
		let row3Item = CheckListItem()
		let row4Item = CheckListItem()

		row0Item.text = "Take the jog"
		row1Item.text = "Read Smth"
		row2Item.text = "Live Life"
		row3Item.text = "Read a book"
		row4Item.text = "Make an app"

		todos.append(row0Item)
		todos.append(row1Item)
		todos.append(row2Item)
		todos.append(row3Item)
		todos.append(row4Item)
	}


	func newToDo() -> CheckListItem {
		let item = CheckListItem();
		item.text = randomTitle()
//		item.isChecked = true
		todos.append(item)
		
		return item
	}

	private func randomTitle() -> String {
		var titles = ["New Todo", "Generic Todo" ,"Do Something", "Take a chill pill", "Don't be lazy", "Drink water"]
		let randomNumber = Int.random(in: 0...titles.count - 1)
		return titles[randomNumber]
	}
 }
