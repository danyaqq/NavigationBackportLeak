import SwiftUI
import NavigationBackport

struct ContentView: View {
    @State private var path: [Presentable] = []

    var body: some View {
        NBNavigationStack(path: $path) {
            root.nbNavigationDestination(for: Presentable.self) { presentable in
                presentable
            }
        }
    }

    private var root: some View {
        VStack {
            Button("main") {
                path.append(Presentable(MainView(viewModel: MainViewModel())))
            }

            Button("profile") {
                path.append(Presentable(ProfileView(viewModel: ProfileViewModel())))
            }
        }
        .buttonStyle(.bordered)
    }
}
