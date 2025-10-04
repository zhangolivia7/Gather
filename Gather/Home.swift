import SwiftUI

struct Home: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            ZStack {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 350, height: 539)
                  .background(
                    Image("Jane")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 350, height: 539)
                      .clipped()
                  )
                  .cornerRadius(40)
                  .blur(radius: 22.5)
            }
            .frame(width: 390, height: 844)
        }
        .padding(.horizontal, 70)
        .padding(.top, 225)
        .padding(.bottom, 386.30737)
        .frame(width: 388, height: 844, alignment: .top)
        .background(
          LinearGradient(
            stops: [
              Gradient.Stop(color: .white, location: 0.00),
              Gradient.Stop(color: Color(red: 0.11, green: 0.38, blue: 0.8), location: 1.00),
            ],
            startPoint: UnitPoint(x: 0.5, y: 0.75),
            endPoint: UnitPoint(x: 0.5, y: 1.4)
          )
        )
    }
}

#Preview { Home() }
