module Api.Object.UpdatePullRequestReviewPayload exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.UpdatePullRequestReviewPayload
selection constructor =
    Object.object constructor


clientMutationId : FieldDecoder String Api.Object.UpdatePullRequestReviewPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] Decode.string


pullRequestReview : SelectionSet pullRequestReview Api.Object.PullRequestReview -> FieldDecoder pullRequestReview Api.Object.UpdatePullRequestReviewPayload
pullRequestReview object =
    Object.single "pullRequestReview" [] object
