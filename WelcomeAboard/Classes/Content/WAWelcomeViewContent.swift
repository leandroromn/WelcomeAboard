public struct WAWelcomeViewContent {
    let title: WAWelcomeViewContentTitle
    let items: [WAWelcomeViewContentCard]

    public init(title: WAWelcomeViewContentTitle, items: [WAWelcomeViewContentCard]) {
        self.title = title
        self.items = items
    }
}
