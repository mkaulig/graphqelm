module Github.Enum.IssueOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which issue connections can be ordered.

  - CreatedAt - Order issues by creation time
  - UpdatedAt - Order issues by update time
  - Comments - Order issues by comment count

-}
type IssueOrderField
    = CreatedAt
    | UpdatedAt
    | Comments


decoder : Decoder IssueOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CREATED_AT" ->
                        Decode.succeed CreatedAt

                    "UPDATED_AT" ->
                        Decode.succeed UpdatedAt

                    "COMMENTS" ->
                        Decode.succeed Comments

                    _ ->
                        Decode.fail ("Invalid IssueOrderField type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : IssueOrderField -> String
toString enum =
    case enum of
        CreatedAt ->
            "CREATED_AT"

        UpdatedAt ->
            "UPDATED_AT"

        Comments ->
            "COMMENTS"
