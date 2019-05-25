//
//  ViewController.swift
//  CheckList
//
//  Created by shweta dhawan on 14/04/19.
//  Copyright © 2019 Shweta. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {


	var todoList: ToDoList
//	var rowItem:[CheckListItem]

    required init?(coder aDecoder: NSCoder) {

		todoList = ToDoList();
        super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.todos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
		let item = todoList.todos[indexPath.row]
		
		updateText(cell: cell, with: item)
		updateCheckMark(cell: cell,  with: item)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
			updateCheckMark(cell: cell,  with:  todoList.todos[indexPath.row])
        }
		
    }

	func updateCheckMark(cell : UITableViewCell, with item: CheckListItem) {
		if item.isChecked {
			cell.accessoryType = .none
		}
		else {
			cell.accessoryType = .checkmark
		}
		item.toggleCheckmark()
	}

	func updateText(cell : UITableViewCell, with item: CheckListItem) {
		if let label  = cell.viewWithTag(1000) as? UILabel {
			label.text = item.text
		}
	}

}

