//
//  CoreData.swift
//  HifamilySwiftUI
//
//  Created by 游 on 2021/9/19.
//

import SwiftUI

struct CoreData: View {
    
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
      sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
      animation: .default)
    private var items: FetchedResults<Item>

    // body中便利items即可
    
    @FetchRequest(entity: Student.entity(), sortDescriptors: []) var students: FetchedResults<Student>
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        VStack {
            List (students, id: \.id){ student in
                    Text(student.name ?? "unknown")
            }
            Button(action: {
                            let firstNames = ["赵", "钱", "孙", "李", "周"]
                            let lastNames = ["翠花", "狗蛋", "狗剩", "伟"]
                            
                            let chosenFirstName = firstNames.randomElement()!
                            let chosenLastName = lastNames.randomElement()!
                            
                            let student = Student(context: self.moc)
                            
                            student.id = UUID()
                            student.name = chosenFirstName + chosenLastName
                            
                            try? self.moc.save()
                        }) {
                        Text("添加")
                        }
        }
        }
        
    
    
}

struct CoreData_Previews: PreviewProvider {
    static var previews: some View {
        CoreData()
    }
}
