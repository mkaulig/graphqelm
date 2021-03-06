module Github.Enum.ProjectCardState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Various content states of a ProjectCard

  - ContentOnly - The card has content only.
  - NoteOnly - The card has a note only.
  - Redacted - The card is redacted.

-}
type ProjectCardState
    = ContentOnly
    | NoteOnly
    | Redacted


decoder : Decoder ProjectCardState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CONTENT_ONLY" ->
                        Decode.succeed ContentOnly

                    "NOTE_ONLY" ->
                        Decode.succeed NoteOnly

                    "REDACTED" ->
                        Decode.succeed Redacted

                    _ ->
                        Decode.fail ("Invalid ProjectCardState type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : ProjectCardState -> String
toString enum =
    case enum of
        ContentOnly ->
            "CONTENT_ONLY"

        NoteOnly ->
            "NOTE_ONLY"

        Redacted ->
            "REDACTED"
