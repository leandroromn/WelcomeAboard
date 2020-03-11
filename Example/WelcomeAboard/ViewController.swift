import WelcomeAboard

class ViewController: UIViewController {
    override func loadView() {
        super.loadView()
        let content = createWAContent()
        view = WABaseView(content: content)
    }

    private func createWAContent() -> WAContent.Base {
        let title = WAContent.Title(format: .oneline, text: "Welcome to Home")

        let items = [
            WAContent.Card(title: "First Title",
                           resume: "First description",
                           icon: UIImage(systemName: "command")),
            WAContent.Card(title: "Second Title",
                           resume: "Second Description",
                           icon: UIImage(systemName: "option")),
            WAContent.Card(title: "Third Title",
                           resume: "Third Description",
                           icon: UIImage(systemName: "control"))
        ]

        let button = WAContent.Button(text: "Continue")

        return WAContent.Base(backgroundColor: .white,
                              title: title,
                              cards: items,
                              button: button)
    }
}
