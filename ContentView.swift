import SwiftUI

struct Skill: Identifiable {
    let id = UUID()
    var name: String
    var progress: Double
}

struct Company: Identifiable {
    let id = UUID()
    var name: String
    var status: String
}

struct ContentView: View {
    
    @State private var skills = [
        Skill(name: "Java", progress: 0.70),
        Skill(name: "Python", progress: 0.60),
        Skill(name: "SQL", progress: 0.50),
        Skill(name: "DSA", progress: 0.45),
        Skill(name: "Communication", progress: 0.65)
    ]
    
    @State private var companies = [
        Company(name: "TCS", status: "Preparing"),
        Company(name: "Infosys", status: "Applied"),
        Company(name: "Zoho", status: "Preparing")
    ]
    
    @State private var solvedProblems = 45
    @State private var showProfile = false
    
    var overallProgress: Double {
        skills.map { $0.progress }.reduce(0, +) / Double(skills.count)
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text("Placement Tracker")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Track your preparation")
                        .foregroundStyle(.secondary)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Overall Progress")
                            .font(.headline)
                        
                        ProgressView(value: overallProgress)
                        
                        Text("\(Int(overallProgress * 100))% Completed")
                            .font(.title3)
                            .bold()
                    }
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(15)
                    
                    HStack {
                        DashboardCard(
                            title: "DSA",
                            value: "\(solvedProblems)",
                            subtitle: "Problems"
                        )
                        
                        DashboardCard(
                            title: "Skills",
                            value: "\(skills.count)",
                            subtitle: "Tracked"
                        )
                    }
                    
                    NavigationLink(destination: SkillsView(skills: $skills)) {
                        MenuRow(
                            icon: "brain.head.profile",
                            title: "Skills Tracker",
                            subtitle: "Track your technical skills"
                        )
                    }
                    
                    NavigationLink(destination: DSAView(solvedProblems: $solvedProblems)) {
                        MenuRow(
                            icon: "chevron.left.forwardslash.chevron.right",
                            title: "DSA Progress",
                            subtitle: "Track coding problems"
                        )
                    }
                    
                    NavigationLink(destination: CompanyView(companies: $companies)) {
                        MenuRow(
                            icon: "building.2",
                            title: "Company Tracker",
                            subtitle: "Track placement companies"
                        )
                    }
                    
                    Button {
                        showProfile = true
                    } label: {
                        MenuRow(
                            icon: "person.circle",
                            title: "Student Profile",
                            subtitle: "View your profile"
                        )
                    }
                }
                .padding()
            }
            .sheet(isPresented: $showProfile) {
                ProfileView()
            }
        }
    }
}

struct DashboardCard: View {
    var title: String
    var value: String
    var subtitle: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
            
            Text(value)
                .font(.title)
                .bold()
            
            Text(subtitle)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(15)
    }
}

struct MenuRow: View {
    var icon: String
    var title: String
    var subtitle: String
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: icon)
                .font(.title2)
                .frame(width: 40)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                
                Text(subtitle)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(15)
        .foregroundStyle(.primary)
    }
}

struct SkillsView: View {
    @Binding var skills: [Skill]
    
    var body: some View {
        List {
            ForEach($skills) { $skill in
                VStack(alignment: .leading, spacing: 8) {
                    Text(skill.name)
                        .font(.headline)
                    
                    ProgressView(value: skill.progress)
                    
                    Text("\(Int(skill.progress * 100))%")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                .padding(.vertical, 8)
            }
        }
        .navigationTitle("Skills")
    }
}

struct DSAView: View {
    @Binding var solvedProblems: Int
    
    var body: some View {
        VStack(spacing: 25) {
            
            Image(systemName: "chevron.left.forwardslash.chevron.right")
                .font(.system(size: 60))
            
            Text("DSA Progress")
                .font(.largeTitle)
                .bold()
            
            Text("\(solvedProblems)")
                .font(.system(size: 60))
                .bold()
            
            Text("Problems Solved")
                .foregroundStyle(.secondary)
            
            Button("Solve 1 More Problem") {
                solvedProblems += 1
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .padding()
        .navigationTitle("DSA")
    }
}

struct CompanyView: View {
    @Binding var companies: [Company]
    
    var body: some View {
        List {
            ForEach(companies) { company in
                HStack {
                    Image(systemName: "building.2")
                    
                    VStack(alignment: .leading) {
                        Text(company.name)
                            .font(.headline)
                        
                        Text(company.status)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
                .padding(.vertical, 8)
            }
        }
        .navigationTitle("Companies")
    }
}

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 90))
                
                Text("Student Profile")
                    .font(.largeTitle)
                    .bold()
                
                Text("Name: Sakthi")
                Text("Department: Computer Science")
                Text("Year: 3rd Year")
                Text("Goal: Software Developer")
                
                Spacer()
            }
            .padding()
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ContentView()
}
