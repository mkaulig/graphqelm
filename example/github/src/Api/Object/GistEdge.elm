module Api.Object.GistEdge exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.GistEdge
selection constructor =
    Object.object constructor


cursor : FieldDecoder String Api.Object.GistEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : SelectionSet node Api.Object.Gist -> FieldDecoder node Api.Object.GistEdge
node object =
    Object.single "node" [] object
