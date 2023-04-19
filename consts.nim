import uri

type
  Api* {.pure.} = enum
    base
  Fact* = object
    fact*: string
    length*: int
const
  base* = parseUri("https://catfact.ninja")
  fact* = $(base/"fact")
  twitter* = "https://api.twitter.com/graphql/8mPfHBetXOg-EHAyeVxUoA/UserByScreenName"