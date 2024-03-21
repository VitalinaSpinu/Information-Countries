//
//  DetailTableViewController.swift
//  Project 13-15
//
//  Created by Dmitrii Vrabie on 17.03.2024.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var capitalLabel: UILabel!
    @IBOutlet var populationLabel: UILabel!
    @IBOutlet var currencyLabel: UILabel!
    
    var country: Country!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        nameLabel.text = country.name
        capitalLabel.text = country.capital
        populationLabel.text = "\(country.population)"
        currencyLabel.text = country.currency
        animationLabel()
    }
    
    func animationLabel() {
        UIView.animate(withDuration: 0, animations: {
            self.nameLabel.alpha = 0
            self.capitalLabel.alpha = 0
            self.populationLabel.alpha = 0
            self.currencyLabel.alpha = 0
        }) { _ in
            UIView.animate(withDuration: 2, animations: {
            self.nameLabel.alpha = 1
            self.capitalLabel.alpha = 1
            self.populationLabel.alpha = 1
            self.currencyLabel.alpha = 1
        })
        }
    }
}
