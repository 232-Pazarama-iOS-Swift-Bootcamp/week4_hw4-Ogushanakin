//
//  RecentViewController.swift
//  Flickr App
//
//  Created by AKIN on 10.10.2022.
//

import UIKit
import FirebaseAuth
import Firebase

class RecentViewController: UIViewController {

    @IBOutlet weak var recentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recentTableView.delegate = self
        recentTableView.dataSource = self
        
        cellNib()
    }

    private func cellNib() {
        let cellNib = UINib(nibName: "RecentTableViewCell", bundle: nil)
        recentTableView.register(cellNib, forCellReuseIdentifier: "recentCell")
    }
}

extension RecentViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 17
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recentCell", for: indexPath) as! RecentTableViewCell
        return cell
    }
    
}
