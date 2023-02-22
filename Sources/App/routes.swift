import Fluent
import Vapor

func routes(_ app: Application) throws {
  app.get { req async throws in
    try await req.view.render("index", ["title": "Hello Vapor!"])
  }

  app.get("hello") { req async -> String in
    "Hello, world!"
  }

  app.get("hello", "agai") { req async throws -> String in
    return "Hello, Janey"
  }

  try app.register(collection: TodoController())
}
