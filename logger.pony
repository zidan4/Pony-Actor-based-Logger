actor Logger
  be log(msg: String) =>
    @printf[I32]("Log: %s\n".cstring(), msg.cstring())

actor Main
  new create(env: Env) =>
    let logger = Logger
    logger.log("Hello from Pony!")
