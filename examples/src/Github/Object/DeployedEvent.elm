module Github.Object.DeployedEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.DeployedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.DeployedEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.DeployedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


{-| The deployment associated with the 'deployed' event.
-}
deployment : SelectionSet selection Github.Object.Deployment -> FieldDecoder selection Github.Object.DeployedEvent
deployment object =
    Object.selectionFieldDecoder "deployment" [] object identity


id : FieldDecoder String Github.Object.DeployedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet selection Github.Object.PullRequest -> FieldDecoder selection Github.Object.DeployedEvent
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity


{-| The ref associated with the 'deployed' event.
-}
ref : SelectionSet selection Github.Object.Ref -> FieldDecoder (Maybe selection) Github.Object.DeployedEvent
ref object =
    Object.selectionFieldDecoder "ref" [] object (identity >> Decode.maybe)
