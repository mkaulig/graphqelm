module Github.Enum.PullRequestReviewEvent exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible events to perform on a pull request review.

  - Comment - Submit general feedback without explicit approval.
  - Approve - Submit feedback and approve merging these changes.
  - RequestChanges - Submit feedback that must be addressed before merging.
  - Dismiss - Dismiss review so it now longer effects merging.

-}
type PullRequestReviewEvent
    = Comment
    | Approve
    | RequestChanges
    | Dismiss


decoder : Decoder PullRequestReviewEvent
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "COMMENT" ->
                        Decode.succeed Comment

                    "APPROVE" ->
                        Decode.succeed Approve

                    "REQUEST_CHANGES" ->
                        Decode.succeed RequestChanges

                    "DISMISS" ->
                        Decode.succeed Dismiss

                    _ ->
                        Decode.fail ("Invalid PullRequestReviewEvent type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : PullRequestReviewEvent -> String
toString enum =
    case enum of
        Comment ->
            "COMMENT"

        Approve ->
            "APPROVE"

        RequestChanges ->
            "REQUEST_CHANGES"

        Dismiss ->
            "DISMISS"
