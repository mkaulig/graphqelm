module Github.Object.AddProjectColumnPayload exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.AddProjectColumnPayload
selection constructor =
    Object.selection constructor


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : FieldDecoder (Maybe String) Github.Object.AddProjectColumnPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.maybe)


{-| The edge from the project's column connection.
-}
columnEdge : SelectionSet selection Github.Object.ProjectColumnEdge -> FieldDecoder selection Github.Object.AddProjectColumnPayload
columnEdge object =
    Object.selectionFieldDecoder "columnEdge" [] object identity


{-| The project
-}
project : SelectionSet selection Github.Object.Project -> FieldDecoder selection Github.Object.AddProjectColumnPayload
project object =
    Object.selectionFieldDecoder "project" [] object identity
