import SwiftUI

struct Home: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                gradient: Gradient(colors: [
                    .gatherBackgroundBlue,
                    .gatherLightBlue
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Header section
                headerSection
                
                Spacer()
                
                // Profile card
                profileCard
                
                Spacer()
                
                // Action buttons
                actionButtons
                
                Spacer()
                
                // Bottom tab bar
                tabBar
            }
        }
    }
    
    private var headerSection: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Gather")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.gatherPrimaryText)
                
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
            
            // Segmented control
            HStack(spacing: 0) {
                Button(action: {}) {
                    Text("Matches")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.gatherWhiteText)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(.gatherBlue)
                }
                .cornerRadius(8, corners: [.topLeft, .bottomLeft])
                
                Button(action: {}) {
                    Text("Map View")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.gatherSecondaryText)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(.gatherBackgroundGrey)
                }
                .cornerRadius(8, corners: [.topRight, .bottomRight])
            }
            .padding(.horizontal, 20)
        }
    }
    
    private var profileCard: some View {
        ZStack {
            // Profile image
            Image("Jane")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 500)
                .clipped()
                .cornerRadius(20)
            
            // Overlay content
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    // Match badge
                    HStack(spacing: 4) {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                        Text("98% match!")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(.gatherMatch)
                    .cornerRadius(12)
                    
                    Spacer()
                    
                    // Message button
                    Button(action: {}) {
                        Image(systemName: "bubble.left.and.bubble.right")
                            .font(.system(size: 16))
                            .foregroundColor(.gatherSecondaryText)
                            .frame(width: 32, height: 32)
                            .background(.gatherCardBackground)
                            .clipShape(Circle())
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
                Spacer()
                
                // Profile info
                VStack(alignment: .leading, spacing: 8) {
                    Text("Jane Doe, 22")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.gatherWhiteText)
                    
                    HStack(spacing: 4) {
                        Image(systemName: "location.fill")
                            .font(.system(size: 12))
                            .foregroundColor(.gatherWhiteText)
                        Text("0.5 mi away")
                            .font(.system(size: 14))
                            .foregroundColor(.gatherWhiteText)
                    }
                    
                    HStack(spacing: 8) {
                        Text("she/her")
                            .font(.system(size: 12))
                            .foregroundColor(.gatherWhiteText)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(.gatherOverlayBackground)
                            .cornerRadius(8)
                        
                        Text("Here for: Friends + Dating")
                            .font(.system(size: 12))
                            .foregroundColor(.gatherWhiteText)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(.gatherOverlayBackground)
                            .cornerRadius(8)
                    }
                    
                    Text("I'm a CS student at UMD who loves the outdoors and a good board game night. Always up for a coffee chat or a hike!")
                        .font(.system(size: 14))
                        .foregroundColor(.gatherWhiteText)
                        .lineLimit(3)
                    
                    HStack {
                        Spacer()
                        Text("See More")
                            .font(.system(size: 12))
                            .foregroundColor(.gatherWhiteText)
                        Image(systemName: "chevron.down")
                            .font(.system(size: 10))
                            .foregroundColor(.gatherWhiteText)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            }
        }
        .frame(width: 350, height: 500)
    }
    
    private var actionButtons: some View {
        HStack(spacing: 40) {
            // Pass button
            Button(action: {}) {
                Image(systemName: "xmark")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.gatherWhiteText)
                    .frame(width: 60, height: 60)
                    .background(.gatherPass)
                    .clipShape(Circle())
            }
            
            // Like button
            Button(action: {}) {
                Image(systemName: "heart")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.gatherWhiteText)
                    .frame(width: 60, height: 60)
                    .background(.gatherMatch)
                    .clipShape(Circle())
            }
        }
        .padding(.bottom, 20)
    }
    
    private var tabBar: some View {
        HStack(spacing: 0) {
            // Home tab
            Button(action: { selectedTab = 0 }) {
                VStack(spacing: 4) {
                    Image(systemName: "house.fill")
                        .font(.system(size: 20))
                        .foregroundColor(selectedTab == 0 ? .gatherMatch : .gatherSecondaryText)
                    Text("Home")
                        .font(.system(size: 10))
                        .foregroundColor(selectedTab == 0 ? .gatherMatch : .gatherSecondaryText)
                }
                .frame(maxWidth: .infinity)
            }
            
            // Messages tab
            Button(action: { selectedTab = 1 }) {
                VStack(spacing: 4) {
                    Image(systemName: "bubble.left.and.bubble.right")
                        .font(.system(size: 20))
                        .foregroundColor(selectedTab == 1 ? .blue : Color(red: 0.4, green: 0.4, blue: 0.4))
                    Text("Messages")
                        .font(.system(size: 10))
                        .foregroundColor(selectedTab == 1 ? .blue : Color(red: 0.4, green: 0.4, blue: 0.4))
                }
                .frame(maxWidth: .infinity)
            }
            
            // Profile tab
            Button(action: { selectedTab = 2 }) {
                VStack(spacing: 4) {
                    Image(systemName: "person")
                        .font(.system(size: 20))
                        .foregroundColor(selectedTab == 2 ? .blue : Color(red: 0.4, green: 0.4, blue: 0.4))
                    Text("Profile")
                        .font(.system(size: 10))
                        .foregroundColor(selectedTab == 2 ? .blue : Color(red: 0.4, green: 0.4, blue: 0.4))
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .background(Color.white)
        .cornerRadius(20, corners: [.topLeft, .topRight])
    }
}

// Extension for custom corner radius
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview { Home() }
