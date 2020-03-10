public extension WAContent {
    struct Base {
        public let backgroundColor: UIColor
        public let title: WAContent.Title
        public let cards: [WAContent.Card]
        public let button: WAContent.Button

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
