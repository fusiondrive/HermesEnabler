import SwiftUI

struct WatchFacesView: View {
    let model: ContentModel

    var body: some View {
        List {
            Section {
                Toggle("Hermès", isOn: Binding(get: { model.hermesEnabled }, set: { model.perform(.hermes($0)) }))
                Toggle("Series 12 46mm (experimental)", isOn: Binding(get: { model.series12FacesEnabled }, set: { model.perform(.series12Faces($0)) }))
            } footer: {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Restart Carousel after changing a face capability.")
                }
            }
        }
        .navigationTitle("Watch Faces")
        .disabled(!model.hasBackup)
    }
}
