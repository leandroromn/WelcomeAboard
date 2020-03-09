import UIKit

class WAWelcomeViewCardsList: UIView {
    init(items: [WAContent.Card]) {
        self.items = items
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var items: [WAContent.Card]

    private var listStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 30
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private lazy var rows: [WAWelcomeViewCardsRow] = {
        return items.reduce([WAWelcomeViewCardsRow]()) { createdViews, item in
            return createdViews + [WAWelcomeViewCardsRow(titleText: item.title,
                                                         titleFont: item.titleFont,
                                                         descriptionText: item.resume,
                                                         descriptionFont: item.resumeFont,
                                                         icon: item.icon)]
        }
    }()

    private func setup() {
        setupViewsHierarchy()
        setupViewsContraints()
    }

    private func setupViewsHierarchy() {
        addSubview(listStackView)
        rows.forEach { listStackView.addArrangedSubview($0) }
    }

    private func setupViewsContraints() {
        listStackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        listStackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        listStackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        listStackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
