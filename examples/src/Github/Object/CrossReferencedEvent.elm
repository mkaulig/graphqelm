module Github.Object.CrossReferencedEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.CrossReferencedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.CrossReferencedEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.CrossReferencedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Github.Object.CrossReferencedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


{-| Reference originated in a different repository.
-}
isCrossRepository : FieldDecoder Bool Github.Object.CrossReferencedEvent
isCrossRepository =
    Object.fieldDecoder "isCrossRepository" [] Decode.bool


{-| Identifies when the reference was made.
-}
referencedAt : FieldDecoder String Github.Object.CrossReferencedEvent
referencedAt =
    Object.fieldDecoder "referencedAt" [] Decode.string


{-| The HTTP path for this pull request.
-}
resourcePath : FieldDecoder String Github.Object.CrossReferencedEvent
resourcePath =
    Object.fieldDecoder "resourcePath" [] Decode.string


{-| Issue or pull request that made the reference.
-}
source : SelectionSet selection Github.Union.ReferencedSubject -> FieldDecoder selection Github.Object.CrossReferencedEvent
source object =
    Object.selectionFieldDecoder "source" [] object identity


{-| Issue or pull request to which the reference was made.
-}
target : SelectionSet selection Github.Union.ReferencedSubject -> FieldDecoder selection Github.Object.CrossReferencedEvent
target object =
    Object.selectionFieldDecoder "target" [] object identity


{-| The HTTP URL for this pull request.
-}
url : FieldDecoder String Github.Object.CrossReferencedEvent
url =
    Object.fieldDecoder "url" [] Decode.string


{-| Checks if the target will be closed when the source is merged.
-}
willCloseTarget : FieldDecoder Bool Github.Object.CrossReferencedEvent
willCloseTarget =
    Object.fieldDecoder "willCloseTarget" [] Decode.bool
