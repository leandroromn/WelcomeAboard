public enum WAWelcomeViewContentTitleType {
    case basic
    case custom

    var textAlignment: NSTextAlignment {
        switch self {
        case .basic: return .left
        case .custom: return .center
        }
    }
}

public struct WAWelcomeViewContentTitle {
    let welcomeText: String
    let titleText: String
    let type: WAWelcomeViewContentTitleType

    public init(welcomeText: String, titleText: String, type: WAWelcomeViewContentTitleType) {
        self.welcomeText = welcomeText
        self.titleText = titleText
        self.type = type
    }
}
