import SwiftUI

struct Accueil: View {
    // ... vos autres propriétés d'état ...
    
    var body: some View {
        VStack {
            
            Text("Academic Weapon")
                .bold()
                .font(.title)
            
            
        
            
            
            
            
            
        }
        TabView {
            EDT()
                .tabItem {
                    Label("EDT", systemImage: "calendar")
                }
            
            RevisionView()
                .tabItem {
                    Label("Révision", systemImage: "books.vertical")
                }
            
            CoursView()
                .tabItem {
                    Label("Cours", systemImage: "text.book.closed")
                }
            
            ProfilView()
                .tabItem {
                    Label("Profil", systemImage: "person")
                }
        }
        .accentColor(.primary)
    }
}






struct Accueil_Previews: PreviewProvider {
    static var previews: some View {
        Accueil()
    }
}
