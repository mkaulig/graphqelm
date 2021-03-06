module Github.Object.HeadRefForcePushedEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.HeadRefForcePushedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.HeadRefForcePushedEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


{-| Identifies the after commit SHA for the 'head_ref_force_pushed' event.
-}
afterCommit : SelectionSet selection Github.Object.Commit -> FieldDecoder (Maybe selection) Github.Object.HeadRefForcePushedEvent
afterCommit object =
    Object.selectionFieldDecoder "afterCommit" [] object (identity >> Decode.maybe)


{-| Identifies the before commit SHA for the 'head_ref_force_pushed' event.
-}
beforeCommit : SelectionSet selection Github.Object.Commit -> FieldDecoder (Maybe selection) Github.Object.HeadRefForcePushedEvent
beforeCommit object =
    Object.selectionFieldDecoder "beforeCommit" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.HeadRefForcePushedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Github.Object.HeadRefForcePushedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet selection Github.Object.PullRequest -> FieldDecoder selection Github.Object.HeadRefForcePushedEvent
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity


{-| Identifies the fully qualified ref name for the 'head_ref_force_pushed' event.
-}
ref : SelectionSet selection Github.Object.Ref -> FieldDecoder (Maybe selection) Github.Object.HeadRefForcePushedEvent
ref object =
    Object.selectionFieldDecoder "ref" [] object (identity >> Decode.maybe)
