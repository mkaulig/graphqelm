module Github.Object.HeadRefDeletedEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.HeadRefDeletedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.HeadRefDeletedEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.HeadRefDeletedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


{-| Identifies the Ref associated with the `head_ref_deleted` event.
-}
headRef : SelectionSet selection Github.Object.Ref -> FieldDecoder (Maybe selection) Github.Object.HeadRefDeletedEvent
headRef object =
    Object.selectionFieldDecoder "headRef" [] object (identity >> Decode.maybe)


{-| Identifies the name of the Ref associated with the `head_ref_deleted` event.
-}
headRefName : FieldDecoder String Github.Object.HeadRefDeletedEvent
headRefName =
    Object.fieldDecoder "headRefName" [] Decode.string


id : FieldDecoder String Github.Object.HeadRefDeletedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet selection Github.Object.PullRequest -> FieldDecoder selection Github.Object.HeadRefDeletedEvent
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity
