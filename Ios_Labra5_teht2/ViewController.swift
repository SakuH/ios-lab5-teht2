//
//  ViewController.swift
//  Ios_Labra5_teht2
//
//  Created by Saku Huuha on 24/09/2019.
//  Copyright © 2019 Saku Huuha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var notesView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        notesView.delegate = self
        notesView.text = UserDefaults.standard.string(forKey: "notesKey")
    }

    func textViewDidChange(_ textView: UITextView) {
        UserDefaults.standard.set(notesView.text, forKey: "notesKey")
    }

}

