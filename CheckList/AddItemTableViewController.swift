//
//  AddItemTableViewController.swift
//  CheckList
//
//  Created by shweta dhawan on 25/05/19.
//  Copyright © 2019 Shweta. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {

	@IBOutlet weak var cancelBarButton: UIBarButtonItem!
	
	@IBAction func cancel(_ sender: Any) {
		navigationController?.popViewController(animated: true)
	}

	@IBAction func done(_ sender: Any) {
		navigationController?.popViewController(animated: true)
	
	}
	@IBOutlet weak var addBarButton: UIBarButtonItem!

	@IBOutlet weak var textField: UITextField!
	

	override func viewDidLoad() {
        super.viewDidLoad()
		navigationItem.largeTitleDisplayMode = .never
		textField.delegate = self

    }

	override func viewWillAppear(_ animated: Bool) {
		textField.becomeFirstResponder()
	}

	override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
		return nil
	}
}

extension AddItemTableViewController :UITextFieldDelegate {

	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return false
	}

	func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		guard let oldText = textField.text,
			  let stringRange = Range(range, in: oldText) else {
			return false
		}
		let newTextt = oldText.replacingCharacters(in: stringRange, with: string)

		if newTextt.isEmpty {
			addBarButton.isEnabled = false
		}
		else {
			addBarButton.isEnabled = true
		}

		return true

	}
}
