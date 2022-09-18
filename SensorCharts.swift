//  SensorCharts.swift

import SwiftUI
import Charts

enum Sensor{
    case sensor1
    case sensor2
}

struct SensorSummary: Identifiable{
    let time: String
    let value: Int
    
    var id: String { time }
}

struct sensorSeries: Identifiable{
    let sensor: String
    let value: [SensorSummary]
    var id: String { sensor }
}

let sensorSerisData: [sensorSeries] = [
    .init(sensor: "sensor1", value: sensor1Data),
    .init(sensor: "sensor2", value: sensor2Data)
]

let sensor1Data: [SensorSummary] = [
    .init(time: "00:00", value: 45),
    .init(time: "00:01", value: 36),
    .init(time: "00:02", value: 70),
    .init(time: "00:03", value: 32),
    .init(time: "00:04", value: 20),
    .init(time: "00:05", value: 63),
    .init(time: "00:06", value: 83)
]

let sensor2Data: [SensorSummary] = [
    .init(time: "00:00", value: 81),
    .init(time: "00:01", value: 90),
    .init(time: "00:02", value: 52),
    .init(time: "00:03", value: 72),
    .init(time: "00:04", value: 53),
    .init(time: "00:05", value:67),
    .init(time: "00:06", value: 80)
]


struct SensorCharts: View{
    var body: some View{
        Chart(sensorSerisData) { sensorSeries in
            ForEach(sensorSeries.value){ element in
                LineMark(
                    x: .value("Day", element.time),
                    y: .value("Sales", element.value)
                )
                .foregroundStyle(by: .value("City", sensorSeries.sensor))
                .symbol(by: .value("City", sensorSeries.sensor))
            }
        }.padding()
    }
}




struct SensorCharts_Previews: PreviewProvider {
    static var previews: some View {
        SensorCharts()
    }
}

