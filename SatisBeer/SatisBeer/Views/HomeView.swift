//
//  ViewController.swift
//  SatisBeer
//
//  Created by Giuseppe Diciolla on 20/07/21.
//

import UIKit

class HomeView: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var promoBar: UIView!
    @IBOutlet weak var promoBubble: UIView!
    @IBOutlet weak var offerTitle: UILabel!
    @IBOutlet weak var offerDescription: UILabel!
    
    var homeViewController = HomeViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup Searchbar
        searchBar.placeholder = NSLocalizedString("search_bar_text", comment: "Search bar placeholder")
        searchBar.searchTextField.defaultTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        // Setup promo cell
        let isPromoActive: Bool = PromoOptions.promoActive
        
        // Setup promoBubble
        promoBubble.layer.cornerRadius = 15
        offerTitle.text = NSLocalizedString("offer_title", comment: "title of the offer")
        offerDescription.text = NSLocalizedString("offer_description", comment: "description of the offer")
        
        // Setup promoBar
        promoBar.clipsToBounds = true
        promoBar.frame.size.height = homeViewController.setPromoBarHeight(isActive: isPromoActive)
        
    }


}

