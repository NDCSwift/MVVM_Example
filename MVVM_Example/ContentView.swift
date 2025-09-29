//
    // Project: MVVM_Example
    //  File: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
import SwiftUI
struct ContentView: View {
    @StateObject private var viewModel = TaskViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.tasks) { task in
                    HStack {
                        Text(task.title)
                        Spacer()
                        Image(systemName: task.isDone ? "checkmark.circle.fill" : "circle")
                            .onTapGesture {
                                viewModel.toggleTask(task)
                            }
                    }
                }
            }
            .navigationTitle("Tasks")
        }
    }
}


#Preview {
    ContentView()
}
