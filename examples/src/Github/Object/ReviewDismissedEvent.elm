module Github.Object.ReviewDismissedEvent exposing (..)

import Github.Enum.PullRequestReviewState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReviewDismissedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.ReviewDismissedEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.ReviewDismissedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Github.Object.ReviewDismissedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


{-| Identifies the message associated with the 'review_dismissed' event.
-}
message : FieldDecoder String Github.Object.ReviewDismissedEvent
message =
    Object.fieldDecoder "message" [] Decode.string


{-| The message associated with the event, rendered to HTML.
-}
messageHtml : FieldDecoder String Github.Object.ReviewDismissedEvent
messageHtml =
    Object.fieldDecoder "messageHtml" [] Decode.string


{-| Identifies the previous state of the review with the 'review_dismissed' event.
-}
previousReviewState : FieldDecoder Github.Enum.PullRequestReviewState.PullRequestReviewState Github.Object.ReviewDismissedEvent
previousReviewState =
    Object.fieldDecoder "previousReviewState" [] Github.Enum.PullRequestReviewState.decoder


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet selection Github.Object.PullRequest -> FieldDecoder selection Github.Object.ReviewDismissedEvent
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity


{-| Identifies the commit which caused the review to become stale.
-}
pullRequestCommit : SelectionSet selection Github.Object.PullRequestCommit -> FieldDecoder (Maybe selection) Github.Object.ReviewDismissedEvent
pullRequestCommit object =
    Object.selectionFieldDecoder "pullRequestCommit" [] object (identity >> Decode.maybe)


{-| The HTTP path for this review dismissed event.
-}
resourcePath : FieldDecoder String Github.Object.ReviewDismissedEvent
resourcePath =
    Object.fieldDecoder "resourcePath" [] Decode.string


{-| Identifies the review associated with the 'review_dismissed' event.
-}
review : SelectionSet selection Github.Object.PullRequestReview -> FieldDecoder (Maybe selection) Github.Object.ReviewDismissedEvent
review object =
    Object.selectionFieldDecoder "review" [] object (identity >> Decode.maybe)


{-| The HTTP URL for this review dismissed event.
-}
url : FieldDecoder String Github.Object.ReviewDismissedEvent
url =
    Object.fieldDecoder "url" [] Decode.string
