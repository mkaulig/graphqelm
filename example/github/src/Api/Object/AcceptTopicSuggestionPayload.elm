module Api.Object.AcceptTopicSuggestionPayload exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.AcceptTopicSuggestionPayload
selection constructor =
    Object.object constructor


clientMutationId : FieldDecoder String Api.Object.AcceptTopicSuggestionPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] Decode.string


topic : SelectionSet topic Api.Object.Topic -> FieldDecoder topic Api.Object.AcceptTopicSuggestionPayload
topic object =
    Object.single "topic" [] object
