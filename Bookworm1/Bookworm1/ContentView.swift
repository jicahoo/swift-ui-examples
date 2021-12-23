//
//  ContentView.swift
//  Bookworm1
//
//  Created by Zhang Flash on 2021/12/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
   
    var body: some View {
        VStack {
            List(students) { student in
                Text(student.name ?? "unknown")
                
            }
            Button("Add") {
                let firstNames = ["A", "B"]
                let lastNames = ["C", "D"]
                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastNames.randomElement()!
                let student = Student(context: moc)
                student.id = UUID()
                student.name = "\(chosenFirstName) \(chosenLastName)"
                try? moc.save()
            }
        }
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
