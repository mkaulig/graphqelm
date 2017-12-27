module Api.Object.UnlockedEvent exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.UnlockedEvent
selection constructor =
    Object.object constructor


actor : SelectionSet actor Api.Object.Actor -> FieldDecoder actor Api.Object.UnlockedEvent
actor object =
    Object.single "actor" [] object


createdAt : FieldDecoder String Api.Object.UnlockedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Api.Object.UnlockedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


lockable : SelectionSet lockable Api.Object.Lockable -> FieldDecoder lockable Api.Object.UnlockedEvent
lockable object =
    Object.single "lockable" [] object
