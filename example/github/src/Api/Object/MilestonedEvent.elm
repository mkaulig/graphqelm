module Api.Object.MilestonedEvent exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.MilestonedEvent
selection constructor =
    Object.object constructor


actor : SelectionSet actor Api.Object.Actor -> FieldDecoder actor Api.Object.MilestonedEvent
actor object =
    Object.single "actor" [] object


createdAt : FieldDecoder String Api.Object.MilestonedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Api.Object.MilestonedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


milestoneTitle : FieldDecoder String Api.Object.MilestonedEvent
milestoneTitle =
    Object.fieldDecoder "milestoneTitle" [] Decode.string


subject : FieldDecoder String Api.Object.MilestonedEvent
subject =
    Object.fieldDecoder "subject" [] Decode.string
