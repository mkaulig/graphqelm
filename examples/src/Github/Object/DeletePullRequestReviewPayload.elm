module Github.Object.DeletePullRequestReviewPayload exposing (..)

import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.DeletePullRequestReviewPayload
selection constructor =
    Object.selection constructor


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : FieldDecoder (Maybe String) Github.Object.DeletePullRequestReviewPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.maybe)


{-| The deleted pull request review.
-}
pullRequestReview : SelectionSet selection Github.Object.PullRequestReview -> FieldDecoder selection Github.Object.DeletePullRequestReviewPayload
pullRequestReview object =
    Object.selectionFieldDecoder "pullRequestReview" [] object identity
