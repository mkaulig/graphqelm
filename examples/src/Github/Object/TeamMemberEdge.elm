module Github.Object.TeamMemberEdge exposing (..)

import Github.Enum.TeamMemberRole
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.TeamMemberEdge
selection constructor =
    Object.selection constructor


cursor : FieldDecoder String Github.Object.TeamMemberEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


{-| The HTTP path to the organization's member access page.
-}
memberAccessResourcePath : FieldDecoder String Github.Object.TeamMemberEdge
memberAccessResourcePath =
    Object.fieldDecoder "memberAccessResourcePath" [] Decode.string


{-| The HTTP URL to the organization's member access page.
-}
memberAccessUrl : FieldDecoder String Github.Object.TeamMemberEdge
memberAccessUrl =
    Object.fieldDecoder "memberAccessUrl" [] Decode.string


node : SelectionSet selection Github.Object.User -> FieldDecoder selection Github.Object.TeamMemberEdge
node object =
    Object.selectionFieldDecoder "node" [] object identity


{-| The role the member has on the team.
-}
role : FieldDecoder Github.Enum.TeamMemberRole.TeamMemberRole Github.Object.TeamMemberEdge
role =
    Object.fieldDecoder "role" [] Github.Enum.TeamMemberRole.decoder
