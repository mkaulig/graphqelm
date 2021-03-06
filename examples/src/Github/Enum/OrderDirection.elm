module Github.Enum.OrderDirection exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Possible directions in which to order a list of items when provided an `orderBy` argument.

  - Asc - Specifies an ascending order for a given `orderBy` argument.
  - Desc - Specifies a descending order for a given `orderBy` argument.

-}
type OrderDirection
    = Asc
    | Desc


decoder : Decoder OrderDirection
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ASC" ->
                        Decode.succeed Asc

                    "DESC" ->
                        Decode.succeed Desc

                    _ ->
                        Decode.fail ("Invalid OrderDirection type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : OrderDirection -> String
toString enum =
    case enum of
        Asc ->
            "ASC"

        Desc ->
            "DESC"
