import UIKit

class WAWelcomeViewCardsRow: UIView {
    init(title: String, description: String, icon: UIImage?) {
        super.init(frame: .zero)
        setup()

        titleLabel.text = title
        descriptionLabel.text = description
        iconImageView.image = icon
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .black
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = .black
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private func setup() {
        setupViewsHierarchy()
        setupViewsContraints()
    }

    private func setupViewsHierarchy() {
        addSubview(iconImageView)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
    }

    private func setupViewsContraints() {
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 36).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 36).isActive = true

        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 16).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
