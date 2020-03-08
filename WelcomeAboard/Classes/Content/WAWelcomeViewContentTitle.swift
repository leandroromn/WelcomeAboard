public enum WAWelcomeViewContentTitleType {
    case oneline
    case multiline(welcomeText: String)

    var textAlignment: NSTextAlignment {
        switch self {
        case .oneline: return .center
        case .multiline: return .left
        }
    }
}

public struct WAWelcomeViewContentTitle {
    let titleText: String
    let type: WAWelcomeViewContentTitleType

    public init(titleText: String, type: WAWelcomeViewContentTitleType) {
        self.titleText = titleText
        self.type = type
    }
}
