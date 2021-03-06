module Github.Object.MergedEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.MergedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.MergedEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


{-| Identifies the commit associated with the `merge` event.
-}
commit : SelectionSet selection Github.Object.Commit -> FieldDecoder (Maybe selection) Github.Object.MergedEvent
commit object =
    Object.selectionFieldDecoder "commit" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.MergedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Github.Object.MergedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


{-| Identifies the Ref associated with the `merge` event.
-}
mergeRef : SelectionSet selection Github.Object.Ref -> FieldDecoder (Maybe selection) Github.Object.MergedEvent
mergeRef object =
    Object.selectionFieldDecoder "mergeRef" [] object (identity >> Decode.maybe)


{-| Identifies the name of the Ref associated with the `merge` event.
-}
mergeRefName : FieldDecoder String Github.Object.MergedEvent
mergeRefName =
    Object.fieldDecoder "mergeRefName" [] Decode.string


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet selection Github.Object.PullRequest -> FieldDecoder selection Github.Object.MergedEvent
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity


{-| The HTTP path for this merged event.
-}
resourcePath : FieldDecoder String Github.Object.MergedEvent
resourcePath =
    Object.fieldDecoder "resourcePath" [] Decode.string


{-| The HTTP URL for this merged event.
-}
url : FieldDecoder String Github.Object.MergedEvent
url =
    Object.fieldDecoder "url" [] Decode.string
