module Api.Object.LabelConnection exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.LabelConnection
selection constructor =
    Object.object constructor


edges : SelectionSet edges Api.Object.LabelEdge -> FieldDecoder (List edges) Api.Object.LabelConnection
edges object =
    Object.listOf "edges" [] object


nodes : SelectionSet nodes Api.Object.Label -> FieldDecoder (List nodes) Api.Object.LabelConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : SelectionSet pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.LabelConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.LabelConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int
