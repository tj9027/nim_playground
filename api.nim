import std/[asyncdispatch, httpclient, json]
import consts, ospaths
proc printUser*(user:string): string =
  return user

# proc printCat*(): Future[string] {.async.} =
#   let client = newAsyncHttpClient()
#   let data = await client.getContent("https://catfact.ninja/fact")
#   echo data
#   return data

proc printData*():Future[string] {.async.} =
  let client = newAsyncHttpClient()
  let data = await client.getContent(fact)
  var node= parseJson(data)
  var cat = to(node, Fact)
  echo getEnv("NODE_ENV"),"enf"
  echo get"$NODE_ENV","env"
  return cat.fact

proc printTwitter*():Future[string] {.async.} =
  let client = newAsyncHttpClient()
  let data = await client.getContent(fact)
  var node= parseJson(data)
  return data
