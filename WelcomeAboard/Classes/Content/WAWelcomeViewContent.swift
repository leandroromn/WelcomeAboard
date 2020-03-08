public struct WAWelcomeViewContent {
    let title: WAWelcomeViewContentTitle
    let items: [WAWelcomeViewContentCard]
    let button: WAWelcomeViewContentButton
    let backgroundColor: UIColor

    public init(title: WAWelcomeViewContentTitle,
                items: [WAWelcomeViewContentCard],
                button: WAWelcomeViewContentButton,
                backgroundColor: UIColor = .white) {
        self.title = title
        self.items = items
        self.button = button
        self.backgroundColor = backgroundColor
    }
}
