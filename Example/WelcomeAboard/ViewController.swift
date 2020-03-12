import WelcomeAboard

class ViewController: UIViewController {
    override func loadView() {
        super.loadView()
        let content = createWAContent()
        view = WABaseView(content: content)
    }

    private func createWAContent() -> WAContent.Base {
        let title = WAContent.Title(format: .oneline,
                                    text: "Welcome to Home")

        let items = [
            WAContent.Card(title: "Control Your Home",
                           resume: "Securely control and monitor your home using the Home app, Control Center, Siri and Apple Watch.",
                           icon: UIImage(systemName: "house.fill"),
                           iconTintColor: .orange),
            WAContent.Card(title: "Set It and Forget It",
                           resume: "Automate common behaviors, settings, and scenes so everything is ready and waiting for you.",
                           icon: UIImage(systemName: "clock.fill"),
                           iconTintColor: .orange),
            WAContent.Card(title: "Share Access",
                           resume: "Allow friends, family, and folks you trust to access your home, whenever and however you want.",
                           icon: UIImage(systemName: "person.crop.circle.fill.badge.checkmark"),
                           iconTintColor: .orange)
        ]

        let button = WAContent.Button(text: "Continue", backgroundColor: .orange) { [weak self] in
            self?.dismiss(animated: true)
        }

        return WAContent.Base(backgroundColor: .white,
                              title: title,
                              cards: items,
                              button: button)
    }
}
