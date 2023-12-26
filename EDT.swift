import SwiftUI

struct EDT: View {
    // Example schedule data
    let schedule: [(time: String, activity: String)] = [
        ("08:00", "Maths"),
        ("09:00", "Physique"),
        ("10:00", "Histoire"),
        ("11:00", "Pause"),
        ("11:30", "Informatique"),
        ("12:30", "Déjeuner"),
        ("14:00", "Anglais"),
        ("15:00", "Sport")
    ]
    
    var body: some View {
        NavigationView {
            List(schedule, id: \.time) { item in
                HStack {
                    Text(item.time)
                        .bold()
                    Spacer()
                    Text(item.activity)
                }
            }
            .navigationTitle("Emploi du Temps")
        }
    }
}

struct EDT: PreviewProvider {
    static var previews: some View {
        EDT()
    }
}
