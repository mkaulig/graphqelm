module Github.Enum.GistPrivacy exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The privacy of a Gist

  - Public - Public
  - Secret - Secret
  - All - Gists that are public and secret

-}
type GistPrivacy
    = Public
    | Secret
    | All


decoder : Decoder GistPrivacy
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "PUBLIC" ->
                        Decode.succeed Public

                    "SECRET" ->
                        Decode.succeed Secret

                    "ALL" ->
                        Decode.succeed All

                    _ ->
                        Decode.fail ("Invalid GistPrivacy type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : GistPrivacy -> String
toString enum =
    case enum of
        Public ->
            "PUBLIC"

        Secret ->
            "SECRET"

        All ->
            "ALL"
