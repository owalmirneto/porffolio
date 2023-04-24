import { ApolloClient, InMemoryCache } from "@apollo/client"

const cache = new InMemoryCache()

const client = new ApolloClient({ uri: `${process.env.NEXT_PUBLIC_BACKEND_HOST}/graphql`, cache })

export { client }
