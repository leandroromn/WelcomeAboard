import UIKit

public struct WAWelcomeViewContentCard {
    let titleText: String
    let descriptionText: String
    let icon: UIImage?

    public init(titleText: String, descriptionText: String, icon: UIImage?) {
        self.titleText = titleText
        self.descriptionText = descriptionText
        self.icon = icon
    }
}
