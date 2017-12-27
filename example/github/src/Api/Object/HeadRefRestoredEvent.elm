module Api.Object.HeadRefRestoredEvent exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.HeadRefRestoredEvent
selection constructor =
    Object.object constructor


actor : SelectionSet actor Api.Object.Actor -> FieldDecoder actor Api.Object.HeadRefRestoredEvent
actor object =
    Object.single "actor" [] object


createdAt : FieldDecoder String Api.Object.HeadRefRestoredEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Api.Object.HeadRefRestoredEvent
id =
    Object.fieldDecoder "id" [] Decode.string


pullRequest : SelectionSet pullRequest Api.Object.PullRequest -> FieldDecoder pullRequest Api.Object.HeadRefRestoredEvent
pullRequest object =
    Object.single "pullRequest" [] object
