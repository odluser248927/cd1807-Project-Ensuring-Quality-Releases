# local testings for dummy Users.
# start up server and run:
# curl 127.0.0.1:8080/api/objects -X POST -d '{"id": "4433", "first": "uncle", "last": "ben" }'
# curl 127.0.0.1:8080/api/objects -X POST -d '{"id": "8877", "first": "john", "last": "wick" }'
# after terraform apply; should see 2 or 3 objects on the restServer.
# curl 127.0.0.1:8080/api/objects | jq 

provider "restapi" {
  uri                    = "http://127.0.0.1:8080/"
  debug                  = true
  write_returns_object   = true

}

data "restapi_object" "john" {
  path = "/api/objects"
  search_key = "first"
  search_value = "wick"
}

# use terraform import restapi_object.uncle /api/objects/4433 to test.

resource "restapi_object" "uncle" {
  path = "/api/objects/"
  data = "{\"id\": \"4433\", \"first\": \"uncle\", \"last\": \"ben\" }"
}

#addUser foo:
resource "restapi_object" "foo" {
  path = "/api/objects/"
  data = "{\"id\": \"1234\", \"first\": \"foo\", \"last\": \"bar\" }"
}



