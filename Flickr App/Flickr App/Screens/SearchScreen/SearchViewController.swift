//
//  SearchViewController.swift
//  Flickr App
//
//  Created by AKIN on 10.10.2022.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchCollectionView: UICollectionView!
    private let searchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchCollectionView.delegate = self
        searchCollectionView.dataSource = self
        
        cellNib()
        searchBarController()
    }

    private func cellNib() {
        let cellNib = UINib(nibName: "SearchCollectionViewCell", bundle: nil)
        searchCollectionView.register(cellNib, forCellWithReuseIdentifier: "searchCell")
    }
    
    private func searchBarController() {
        searchController.searchBar.placeholder = "Search..."
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
    }

}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        13
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "searchCell", for: indexPath) as! SearchCollectionViewCell
        return cell
    }
}

extension SearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
}
