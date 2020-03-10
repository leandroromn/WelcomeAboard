public extension WAContent {
    struct Title {
        public let format: WAContent.Title.Format
        public let text: String

        public init(format: WAContent.Title.Format, text: String) {
            self.format = format
            self.text = text
        }
    }
}
