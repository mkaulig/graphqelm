module Api.Object.ExternalIdentityConnection exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.ExternalIdentityConnection
selection constructor =
    Object.object constructor


edges : SelectionSet edges Api.Object.ExternalIdentityEdge -> FieldDecoder (List edges) Api.Object.ExternalIdentityConnection
edges object =
    Object.listOf "edges" [] object


nodes : SelectionSet nodes Api.Object.ExternalIdentity -> FieldDecoder (List nodes) Api.Object.ExternalIdentityConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : SelectionSet pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.ExternalIdentityConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.ExternalIdentityConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int
