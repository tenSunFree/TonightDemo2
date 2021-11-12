import UIKit

final class HomeViewCell: UICollectionViewCell {
    static let reuseIdentifier = "HomeViewCellReuseIdentifier"
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.attributedText = NSAttributedString(
            string: "",
            attributes: [
                .font: UIFont(name: "HelveticaNeue-Bold", size: 20),
                .foregroundColor: UIColor(white: 1.0, alpha: 0.9)
            ])
        return label
    }()
    
    let linkLabel: UILabel = {
        let label = UILabel()
        label.attributedText = NSAttributedString(
            string: "Фантастика, драма",
            attributes: [
                .font: UIFont(name: "HelveticaNeue", size: 16),
                .foregroundColor: UIColor(white: 0.8, alpha: 0.9)
            ])
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        initContentView()
        initLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func initContentView() {
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(linkLabel)
        contentView.backgroundColor = UIColor.gray
        contentView.layer.cornerRadius = 10
        contentView.layer.borderWidth = 1.0
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        contentView.layer.backgroundColor = UIColor.red.cgColor
        contentView.layer.shadowColor = UIColor.gray.cgColor
        contentView.layer.shadowOffset = CGSize(width: 2.0, height: 4.0)
        contentView.layer.shadowRadius = 2.0
        contentView.layer.shadowOpacity = 1.0
        contentView.layer.masksToBounds = false
    }

    private func initLayout() {
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        linkLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        descriptionLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: linkLabel.topAnchor, constant: 0).isActive = true
        linkLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        linkLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
        linkLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16).isActive = true
        linkLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16).isActive = true
    }
}
