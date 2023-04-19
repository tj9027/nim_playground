import jester
import api


routes:
  get "/":
    resp "hello world"
  get "/user/@user":
    resp printUser(@"user")
  # get "/cat/api":
  #   resp waitFor printCat()
  get "/data":
    resp waitFor printData()
  get "/twitter":
    resp waitFor printTwitter()