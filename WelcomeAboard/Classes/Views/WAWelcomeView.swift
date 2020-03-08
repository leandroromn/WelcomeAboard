import UIKit

public class WAWelcomeView: UIView {
    public init(content: WAWelcomeViewContent) {
        viewContent = content
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var viewContent: WAWelcomeViewContent

    private lazy var welcomeTitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = viewContent.title.type.textAlignment
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false

        if case let .multiline(welcomeText) = viewContent.title.type {
            label.text = welcomeText
        }

        return label
    }()

    private lazy var nameTitleLabel: UILabel = {
        let label = UILabel()
        label.text = viewContent.title.titleText
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = viewContent.title.type.textAlignment
        label.font = .systemFont(ofSize: 32, weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.contentInsetAdjustmentBehavior = .never
        scrollView.bounces = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()

    private var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var cardsListView: WAWelcomeViewCardsList = {
        let view = WAWelcomeViewCardsList(items: viewContent.items)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var continueButton: WAPrimaryButton = {
        let button = WAPrimaryButton()
        button.setTitle(viewContent.button.text, for: .normal)
        button.backgroundColor = viewContent.button.backgroundColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private func setup() {
        setupViewsHierarchy()
        setupViewsContraints()
        setupAdditionalSettings()
    }

    private func setupViewsHierarchy() {
        addSubview(welcomeTitleLabel)
        addSubview(nameTitleLabel)

        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(cardsListView)

        addSubview(continueButton)
    }

    private func setupViewsContraints() {
        welcomeTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        welcomeTitleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
        welcomeTitleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40).isActive = true

        nameTitleLabel.topAnchor.constraint(equalTo: welcomeTitleLabel.bottomAnchor, constant: -4).isActive = true
        nameTitleLabel.leadingAnchor.constraint(equalTo: welcomeTitleLabel.leadingAnchor).isActive = true
        nameTitleLabel.trailingAnchor.constraint(equalTo: welcomeTitleLabel.trailingAnchor).isActive = true

        continueButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        continueButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 24).isActive = true
        continueButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -24).isActive = true

        scrollView.topAnchor.constraint(equalTo: nameTitleLabel.bottomAnchor, constant: 60).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: nameTitleLabel.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: nameTitleLabel.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: continueButton.topAnchor).isActive = true

        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true

        cardsListView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        cardsListView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        cardsListView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        cardsListView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }

    private func setupAdditionalSettings() {
        backgroundColor = viewContent.backgroundColor
        continueButton.addTarget(self, action: #selector(didPressedButton), for: .touchUpInside)
    }

    @objc private func didPressedButton() {
        viewContent.button.action?()
    }
}
