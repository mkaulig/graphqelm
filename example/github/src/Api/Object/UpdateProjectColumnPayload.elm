module Api.Object.UpdateProjectColumnPayload exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.UpdateProjectColumnPayload
selection constructor =
    Object.object constructor


clientMutationId : FieldDecoder String Api.Object.UpdateProjectColumnPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] Decode.string


projectColumn : SelectionSet projectColumn Api.Object.ProjectColumn -> FieldDecoder projectColumn Api.Object.UpdateProjectColumnPayload
projectColumn object =
    Object.single "projectColumn" [] object
