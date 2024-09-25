This project demonstrates a memory leak issue encountered when using NBNavigationStack with an array of view wrappers as the navigation path. The problem arises because the Navigator retains an array of these screens, preventing them from being deallocated when the screen is closed.

### Problem Description
When using NBNavigationStack, developers often utilize an array of view wrappers to manage navigation paths. However, this approach can lead to memory leaks due to the way `Navigator` manages view lifecycle and memory. When a view is navigated away from, it is not properly released from memory, leading to increased memory usage over time.

### Reproduction Steps
1. Clone the Repository: Start by cloning this repository to your local machine.
```bash
git clone https://github.com/danyaqq/NavigationBackportLeak
```
2. Open the Project: Open the project in Xcode.
3. Run the App: Build and run the application on a simulator or device.
4. Navigate Through Views: Start navigating through the views that utilize NBNavigationStack with an array of view wrappers.
5. Look in the terminal: You will notice that deinit is not called as expected after views are closed.

### Potential Solution
- Allow developers to disable the use of the Navigator for NBNavigationStack

   
https://github.com/user-attachments/assets/ae15fe4a-f2b8-4964-b2e7-63e3dcfe0e9c

