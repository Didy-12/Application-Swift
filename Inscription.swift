import SwiftUI

struct Inscription: View {
    @State private var nom: String = ""
    @State private var prenom: String = ""
    @State private var email: String = ""
    @State private var motDePasse: String = ""
     @State private var navigateToNextScreen = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Academic Weapon")
                .bold()
                .font(.title)
                .padding()
            Form {
                
                TextField("Nom", text: $nom)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Prénom", text: $prenom)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Adresse Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Mot de Passe", text: $motDePasse)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: {
                    // Modifier cette ligne pour gérer l'inscription
                    self.navigateToNextScreen = true
                }) {
                    Text("S'inscrire")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.purple, lineWidth: 2)
                        )
                }
                .background(Color.purple)
                .cornerRadius(15)
                
                // NavigationLink caché qui s'active lorsque navigateToNextScreen est vrai
                NavigationLink(destination: Accueil()) {
                    Text("Périfériques")
                }.buttonStyle(PlainButtonStyle())

            }
            .padding()
        }
    }
    
    
   
}






struct Inscription_Previews: PreviewProvider {
    static var previews: some View {
        Inscription()
    }
}
