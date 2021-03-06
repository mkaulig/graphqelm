module Swapi.Enum.Episode exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| One of the films in the Star Wars Trilogy

  - Empire - Released in 1980.
  - Jedi - Released in 1983.
  - Newhope - Released in 1977.

-}
type Episode
    = Empire
    | Jedi
    | Newhope


decoder : Decoder Episode
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "EMPIRE" ->
                        Decode.succeed Empire

                    "JEDI" ->
                        Decode.succeed Jedi

                    "NEWHOPE" ->
                        Decode.succeed Newhope

                    _ ->
                        Decode.fail ("Invalid Episode type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : Episode -> String
toString enum =
    case enum of
        Empire ->
            "EMPIRE"

        Jedi ->
            "JEDI"

        Newhope ->
            "NEWHOPE"
