module Github.Object.Reaction exposing (..)

import Github.Enum.ReactionContent
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Reaction
selection constructor =
    Object.selection constructor


{-| Identifies the emoji reaction.
-}
content : FieldDecoder Github.Enum.ReactionContent.ReactionContent Github.Object.Reaction
content =
    Object.fieldDecoder "content" [] Github.Enum.ReactionContent.decoder


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.Reaction
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Github.Object.Reaction
id =
    Object.fieldDecoder "id" [] Decode.string


{-| The reactable piece of content
-}
reactable : SelectionSet selection Github.Interface.Reactable -> FieldDecoder selection Github.Object.Reaction
reactable object =
    Object.selectionFieldDecoder "reactable" [] object identity


{-| Identifies the user who created this reaction.
-}
user : SelectionSet selection Github.Object.User -> FieldDecoder (Maybe selection) Github.Object.Reaction
user object =
    Object.selectionFieldDecoder "user" [] object (identity >> Decode.maybe)
