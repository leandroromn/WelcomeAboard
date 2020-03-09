import WelcomeAboard

class ViewController: UIViewController {
    override func loadView() {
        super.loadView()

        let title = WAContent.Title(format: .oneline, text: "Welcome to Home")
        let item1 = WAContent.Card(title: "First Title",
                                   resume: "First description",
                                   icon: UIImage(systemName: "command"))
        let item2 = WAContent.Card(title: "Second Title",
                                   resume: "Second Description",
                                   icon: UIImage(systemName: "option"))
        let button = WAContent.Button(text: "Prosseguir") {
            print("Hello World")
        }
        let content = WAContent.Base(backgroundColor: .white,
                                     title: title,
                                     cards: [item1, item2],
                                     button: button)
        view = WAWelcomeView(content: content)
    }
}
