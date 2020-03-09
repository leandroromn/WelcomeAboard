public extension WAContent {
    struct Card {
        let title: String
        let titleFont: UIFont
        let resume: String
        let resumeFont: UIFont
        let icon: UIImage?

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
