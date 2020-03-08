import UIKit

public struct WAWelcomeViewContentCard {
    let titleText: String
    let titleFont: UIFont
    let descriptionText: String
    let descriptionFont: UIFont
    let icon: UIImage?

    public init(titleText: String,
                titleFont: UIFont = .systemFont(ofSize: 14, weight: .semibold),
                descriptionText: String,
                descriptionFont: UIFont = .systemFont(ofSize: 14, weight: .regular),
                icon: UIImage?) {
        self.titleText = titleText
        self.titleFont = titleFont
        self.descriptionText = descriptionText
        self.descriptionFont = descriptionFont
        self.icon = icon
    }
}
