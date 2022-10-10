//
//  ProfileViewController.swift
//  Flickr App
//
//  Created by AKIN on 10.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileUsernameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellNib()

        profileCollectionView.delegate = self
        profileCollectionView.dataSource = self
    }

    private func cellNib() {
        let cellNib = UINib(nibName: "ProfileCollectionViewCell", bundle: nil)
        profileCollectionView.register(cellNib, forCellWithReuseIdentifier: "profileCell")
    }

    @IBAction func collectionListButton(_ sender: Any) {
        
    }
    @IBAction func signOutButton(_ sender: Any) {
        
    }
    
    @IBAction func likesListButton(_ sender: Any) {
        
    }
}

extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "profileCell", for: indexPath) as! ProfileCollectionViewCell
        return cell
    }
}
