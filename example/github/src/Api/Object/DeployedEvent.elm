module Api.Object.DeployedEvent exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.DeployedEvent
selection constructor =
    Object.object constructor


actor : SelectionSet actor Api.Object.Actor -> FieldDecoder actor Api.Object.DeployedEvent
actor object =
    Object.single "actor" [] object


createdAt : FieldDecoder String Api.Object.DeployedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


databaseId : FieldDecoder Int Api.Object.DeployedEvent
databaseId =
    Object.fieldDecoder "databaseId" [] Decode.int


deployment : SelectionSet deployment Api.Object.Deployment -> FieldDecoder deployment Api.Object.DeployedEvent
deployment object =
    Object.single "deployment" [] object


id : FieldDecoder String Api.Object.DeployedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


pullRequest : SelectionSet pullRequest Api.Object.PullRequest -> FieldDecoder pullRequest Api.Object.DeployedEvent
pullRequest object =
    Object.single "pullRequest" [] object


ref : SelectionSet ref Api.Object.Ref -> FieldDecoder ref Api.Object.DeployedEvent
ref object =
    Object.single "ref" [] object
