//
//  ViewController.swift
//  SelfSizingCollectionView
//
//  Created by Parveen Kaler on 8/4/17.
//
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {

    // MARK: - Outlets

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!

    // MARK: - view lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        if #available(iOS 10.0, *) {
            // This causes constaint errors.
//            collectionViewFlowLayout.itemSize = UICollectionViewFlowLayoutAutomaticSize
//            collectionViewFlowLayout.estimatedItemSize = CGSize(width: 300, height: 50)
        } else {
            // Fallback on earlier versions
        }
    }

    // MARK: - UICollectionViewDataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath)

        guard let itemCell = cell as? ItemCell else {
            return cell
        }

        itemCell.label.text = "blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah"

        return cell
    }
}

