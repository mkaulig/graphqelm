module Github.Object.Bot exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Bot
selection constructor =
    Object.selection constructor


{-| A URL pointing to the GitHub App's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl : ({ size : OptionalArgument Int } -> { size : OptionalArgument Int }) -> FieldDecoder String Github.Object.Bot
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.fieldDecoder "avatarUrl" optionalArgs Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.Bot
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Github.Object.Bot
id =
    Object.fieldDecoder "id" [] Decode.string


{-| The username of the actor.
-}
login : FieldDecoder String Github.Object.Bot
login =
    Object.fieldDecoder "login" [] Decode.string


{-| The HTTP path for this bot
-}
resourcePath : FieldDecoder String Github.Object.Bot
resourcePath =
    Object.fieldDecoder "resourcePath" [] Decode.string


{-| The HTTP URL for this bot
-}
url : FieldDecoder String Github.Object.Bot
url =
    Object.fieldDecoder "url" [] Decode.string
