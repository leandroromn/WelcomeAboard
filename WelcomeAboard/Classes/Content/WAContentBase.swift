public extension WAContent {
    struct Base {
        let backgroundColor: UIColor
        let title: WAContent.Title
        let cards: [WAContent.Card]
        let button: WAContent.Button

        public init(backgroundColor: UIColor,
                    title: WAContent.Title,
                    cards: [WAContent.Card],
                    button: WAContent.Button) {
            self.backgroundColor = backgroundColor
            self.title = title
            self.cards = cards
            self.button = button
        }
    }
}
