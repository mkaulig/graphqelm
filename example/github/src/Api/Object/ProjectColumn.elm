module Api.Object.ProjectColumn exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.ProjectColumn
selection constructor =
    Object.object constructor


cards : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet cards Api.Object.ProjectCardConnection -> FieldDecoder cards Api.Object.ProjectColumn
cards fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.single "cards" optionalArgs object


createdAt : FieldDecoder String Api.Object.ProjectColumn
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


databaseId : FieldDecoder Int Api.Object.ProjectColumn
databaseId =
    Object.fieldDecoder "databaseId" [] Decode.int


id : FieldDecoder String Api.Object.ProjectColumn
id =
    Object.fieldDecoder "id" [] Decode.string


name : FieldDecoder String Api.Object.ProjectColumn
name =
    Object.fieldDecoder "name" [] Decode.string


project : SelectionSet project Api.Object.Project -> FieldDecoder project Api.Object.ProjectColumn
project object =
    Object.single "project" [] object


resourcePath : FieldDecoder String Api.Object.ProjectColumn
resourcePath =
    Object.fieldDecoder "resourcePath" [] Decode.string


updatedAt : FieldDecoder String Api.Object.ProjectColumn
updatedAt =
    Object.fieldDecoder "updatedAt" [] Decode.string


url : FieldDecoder String Api.Object.ProjectColumn
url =
    Object.fieldDecoder "url" [] Decode.string
