public extension WAContent {
    struct Title {
        let format: WAContent.Title.Format
        let text: String

        public init(format: WAContent.Title.Format, text: String) {
            self.format = format
            self.text = text
        }
    }
}
