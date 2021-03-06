module Github.Object.LabeledEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.LabeledEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.LabeledEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.LabeledEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Github.Object.LabeledEvent
id =
    Object.fieldDecoder "id" [] Decode.string


{-| Identifies the label associated with the 'labeled' event.
-}
label : SelectionSet selection Github.Object.Label -> FieldDecoder selection Github.Object.LabeledEvent
label object =
    Object.selectionFieldDecoder "label" [] object identity


{-| Identifies the `Labelable` associated with the event.
-}
labelable : SelectionSet selection Github.Interface.Labelable -> FieldDecoder selection Github.Object.LabeledEvent
labelable object =
    Object.selectionFieldDecoder "labelable" [] object identity
