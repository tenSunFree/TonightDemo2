import SwiftUI
import UIKit

final class HomeViewController: UICollectionViewController {
    var response: HomeEntriesResponse?

    init() {
        super.init(collectionViewLayout: self.layout)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let layout: UICollectionViewLayout = {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.2))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        self.collectionView.register(HomeViewCell.self, forCellWithReuseIdentifier: HomeViewCell.reuseIdentifier)
        let manager = NetworkManager()
        manager.get(HomeEntriesResponse.self) { [weak self] response in
            self!.response = response
            self!.collectionView.reloadData()
        }
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let response = response else { return 0 }
        guard let detailResponse = response.detailResponse else { return 0 }
        return detailResponse.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeViewCell.reuseIdentifier, for: indexPath) as! HomeViewCell
        guard let response = response else { return cell }
        guard let detailResponse = response.detailResponse else { return cell }
        cell.descriptionLabel.text = detailResponse[indexPath.row].description
        cell.linkLabel.text = detailResponse[indexPath.row].link
        return cell
    }
}
