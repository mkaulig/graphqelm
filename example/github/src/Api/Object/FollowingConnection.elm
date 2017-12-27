module Api.Object.FollowingConnection exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.FollowingConnection
selection constructor =
    Object.object constructor


edges : SelectionSet edges Api.Object.UserEdge -> FieldDecoder (List edges) Api.Object.FollowingConnection
edges object =
    Object.listOf "edges" [] object


nodes : SelectionSet nodes Api.Object.User -> FieldDecoder (List nodes) Api.Object.FollowingConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : SelectionSet pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.FollowingConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.FollowingConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int
