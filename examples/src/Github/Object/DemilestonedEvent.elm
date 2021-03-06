module Github.Object.DemilestonedEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.DemilestonedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.DemilestonedEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.DemilestonedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Github.Object.DemilestonedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


{-| Identifies the milestone title associated with the 'demilestoned' event.
-}
milestoneTitle : FieldDecoder String Github.Object.DemilestonedEvent
milestoneTitle =
    Object.fieldDecoder "milestoneTitle" [] Decode.string


{-| Object referenced by event.
-}
subject : SelectionSet selection Github.Union.MilestoneItem -> FieldDecoder selection Github.Object.DemilestonedEvent
subject object =
    Object.selectionFieldDecoder "subject" [] object identity
