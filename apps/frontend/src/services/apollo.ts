import { ApolloClient, InMemoryCache } from "@apollo/client"

const cache = new InMemoryCache()

const client = new ApolloClient({ uri: "http://localhost:3001/graphql", cache })

export { client }
