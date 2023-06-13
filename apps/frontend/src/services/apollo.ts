import { ApolloClient, InMemoryCache } from "@apollo/client"

const cache = new InMemoryCache()

const { NEXT_PUBLIC_BACKEND_HOST: graphqlHost } = process.env

const client = new ApolloClient({ uri: `${graphqlHost}/graphql`, cache })

export { client }
