// https://github.com/Quick/Quick

import Quick
import Nimble
import Nimble_Snapshots
import WelcomeAboard

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        describe("#init") {
            var viewController: UIViewController!

            beforeEach {
                viewController = UIViewController()

                let window = UIWindow(frame: UIScreen.main.bounds)
                window.makeKeyAndVisible()
                window.rootViewController = viewController
            }

            it("renders welcome view with default style") {
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

                viewController.view = WABaseView(content: content)

                expect(viewController.view).to(recordSnapshot())
            }
        }
    }
}
