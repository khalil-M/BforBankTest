import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
                Color.getBackgroundColor(colorScheme: colorScheme)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Scannez, importez ou saisissez l'IBAN")
                        .padding(.leading, 20)
                        .navigationBarTitle("Ajouter un bénéficiaire", displayMode: .inline)
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            
                        }) {
                            NavigationLink(destination: IbanScanner().navigationBarTitle("Scannez votre IBAN")) {
                                makeScanButtonView()
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                       Spacer()
                    }
                    .padding()
        
                }
                
            }
            .navigationViewStyle(StackNavigationViewStyle())
            
            
        }
    }
    
    private func makeScanButtonView() -> some View {
        return Text("Scannez")
            .padding()
            .background(Color.getBackgroundColor(colorScheme: colorScheme))
            .foregroundColor(.green)
            .frame(width: 200, height: 40)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.green, lineWidth: 1)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
