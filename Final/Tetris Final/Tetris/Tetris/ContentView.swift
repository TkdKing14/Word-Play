//
//  ContentView.swift
//  Tetris
//
//  Created by Carson Payne on 10/11/24.
//

import SwiftUI
import Combine

struct ContentView: View {
    @StateObject private var game = TetrisGame()

    var body: some View {
        VStack {
            Text("Tetris")
                .font(.largeTitle)
            GridView(board: game.board)
            Button("Drop Piece") {
                game.dropPiece()
            }
        }
        .padding()
        .onAppear {
            game.startGame()
        }
        self.timer = Timer.publish(every: 1.0, on: .main, in: .common)


            game.dropPiece()
        }
    }


struct GridView: View {
    let board: [[Int]]

    var body: some View {
        VStack {
            ForEach(0..<board.count, id: \.self) { row in
                HStack {
                    ForEach(0..<board[row].count, id: \.self) { col in
                        Rectangle()
                            .fill(board[row][col] == 0 ? Color.white : Color.black)
                            .frame(width: 30, height: 30)
                    }
                }
            }
        }
    }
}

class TetrisGame: ObservableObject {
    @Published var board: [[Int]]
    let rows = 20
    let cols = 10
    var currentPiece: Tetrimino?
    var timer: AnyCancellable?

    init() {
        board = Array(repeating: Array(repeating: 0, count: cols), count: rows)
        spawnNewPiece()
    }

    func startGame() {
        timer = Timer.publish(every: 1.0, on: .main, in: .common)
            .autoconnect()
            .sink { _ in
                self.dropPiece()
            }
    }

    func spawnNewPiece() {
        currentPiece = Tetrimino()
    }

    func dropPiece() {
        // Implement drop logic here
    }
}

class Tetrimino {
    var shape: [[Int]]
    var position: (row: Int, col: Int)

    init() {
        shape = [[1, 1], [1, 1]]
        position = (0, 4)
    }
}

        #Preview {
            ContentView()
        }
    
