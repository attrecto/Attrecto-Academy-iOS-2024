import UIKit

struct Book {
    let title: String
    let author: String?
    let price: Double?
}

class Library {
    
    var books: [Book] = []
    
    func addBook(book: Book){
        books.append(book)
    }
    
    func printBooks(){
        for book in books{
            let author = book.author ?? "Author not available"
     
            if let price = book.price{
                print("------\nTitle: \(book.title)\nAuthor: \(author)\nPrice: \(price)")
            }else{
                print("------\nTitle: \(book.title)\nAuthor: \(author)")
            }
        }
    }
}




var eotb = Book(title: "Echoes of the Byte", author: "John Doe", price: 14.99)
var tla = Book(title: "The Last Algorithm", author: "Jane Smith", price: nil)
var qt = Book(title: "Quantum Threads", author: "Alan Turing", price: 19.99)
var cs = Book(title: "Cyber Shadows", author: nil, price: nil)




var library = Library()

library.addBook(book: eotb)
library.addBook(book: tla)
library.addBook(book: qt)
library.addBook(book: cs)

library.printBooks()
