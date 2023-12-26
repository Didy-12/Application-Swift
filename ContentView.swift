import SwiftUI

struct ContentView: View {
    @State private var question: String = ""
    @State private var reponse: String = ""
    @State private var quizItems = [(question: String, reponse: String)]()
    
    var body: some View {
        VStack {
            Text("Quiz AI")
                .bold()
                .font(.title)
            
            Form {
                TextField("Question", text: $question)
                TextField("Réponse", text: $reponse)
                
                Button(action: ajouterQuestionReponse) {
                    Text("Ajouter")
                }
                .disabled(question.isEmpty || reponse.isEmpty) // Désactive le bouton si la question ou la réponse est vide
            }
            
            List(quizItems, id: \.question) { item in
                VStack(alignment: .leading) {
                    Text("Question: \(item.question)")
                        .bold()
                    Text("Réponse: \(item.reponse)")
                }
            }
        }
    }
    
    func ajouterQuestionReponse() {
        let nouveauItem = (question: question, reponse: reponse)
        quizItems.append(nouveauItem)
        // Réinitialiser les champs
        question = ""
        reponse = ""
    }
}
