//
//  CompanyViewController.swift
//  Career Fair
//
//  Created by Rohan Rk on 2/12/17.
//  Copyright © 2017 Rohan Rk. All rights reserved.
//

import UIKit

class CompanyViewController: UIViewController {
    
    @IBOutlet weak var descriptionText: UITextView!
    var company: Company?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()

        // Do any additional setup after loading the view.
    }
    
    private func configure() {
        if let company = self.company {
            self.title = company.name
            self.descriptionText.text = company.description
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
