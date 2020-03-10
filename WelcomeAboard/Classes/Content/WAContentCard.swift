public extension WAContent {
    struct Card {
        public let title: String
        public let titleFont: UIFont
        public let resume: String
        public let resumeFont: UIFont
        public let icon: UIImage?

        public init(title: String,
                    titleFont: UIFont = .systemFont(ofSize: 14, weight: .semibold),
                    resume: String,
                    resumeFont: UIFont = .systemFont(ofSize: 14, weight: .regular),
                    icon: UIImage?) {
            self.title = title
            self.titleFont = titleFont
            self.resume = resume
            self.resumeFont = resumeFont
            self.icon = icon
        }
    }
}
