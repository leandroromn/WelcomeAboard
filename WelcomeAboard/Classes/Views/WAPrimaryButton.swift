import UIKit

class WAPrimaryButton: UIButton {
    init() {
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override var isHighlighted: Bool {
        didSet {
            alpha = self.isHighlighted ? 0.75 : 1
        }
    }

    private func setup() {
        setTitleColor(.white, for: .normal)
        contentEdgeInsets = UIEdgeInsets(top: 16, left: 8, bottom: 16, right: 8)
        titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        backgroundColor = .lightGray
        layer.cornerRadius = 8
    }
}
