//
//  ViewController.swift
//  SatisBeer
//
//  Created by Giuseppe Diciolla on 20/07/21.
//

import UIKit

class HomeView: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        searchBar.placeholder = NSLocalizedString("search_bar_text", comment: "Search bar placeholder")
        searchBar.searchTextField.defaultTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

    }


}

