public extension WAContent.Title {
    enum Format {
        case oneline
        case multiline(welcomeText: String)

        var textAlignment: NSTextAlignment {
            switch self {
            case .oneline: return .center
            case .multiline: return .left
            }
        }
    }
}
