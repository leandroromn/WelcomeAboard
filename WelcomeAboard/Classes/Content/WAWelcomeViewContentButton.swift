public struct WAWelcomeViewContentButton {
    let text: String
    let backgroundColor: UIColor
    let action: (() -> Void)?

    public init(text: String, backgroundColor: UIColor = .lightGray, action: (() -> Void)?) {
        self.text = text
        self.backgroundColor = backgroundColor
        self.action = action
    }
}
