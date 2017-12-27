module Api.Object.Ref exposing (..)

import Api.Enum.PullRequestState
import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.Ref
selection constructor =
    Object.object constructor


associatedPullRequests : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, states : OptionalArgument (List Api.Enum.PullRequestState.PullRequestState), labels : OptionalArgument (List String), headRefName : OptionalArgument String, baseRefName : OptionalArgument String, orderBy : OptionalArgument Value } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, states : OptionalArgument (List Api.Enum.PullRequestState.PullRequestState), labels : OptionalArgument (List String), headRefName : OptionalArgument String, baseRefName : OptionalArgument String, orderBy : OptionalArgument Value }) -> SelectionSet associatedPullRequests Api.Object.PullRequestConnection -> FieldDecoder associatedPullRequests Api.Object.Ref
associatedPullRequests fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, states = Absent, labels = Absent, headRefName = Absent, baseRefName = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "states" filledInOptionals.states (Encode.enum toString |> Encode.list), Argument.optional "labels" filledInOptionals.labels (Encode.string |> Encode.list), Argument.optional "headRefName" filledInOptionals.headRefName Encode.string, Argument.optional "baseRefName" filledInOptionals.baseRefName Encode.string, Argument.optional "orderBy" filledInOptionals.orderBy identity ]
                |> List.filterMap identity
    in
    Object.single "associatedPullRequests" optionalArgs object


id : FieldDecoder String Api.Object.Ref
id =
    Object.fieldDecoder "id" [] Decode.string


name : FieldDecoder String Api.Object.Ref
name =
    Object.fieldDecoder "name" [] Decode.string


prefix : FieldDecoder String Api.Object.Ref
prefix =
    Object.fieldDecoder "prefix" [] Decode.string


repository : SelectionSet repository Api.Object.Repository -> FieldDecoder repository Api.Object.Ref
repository object =
    Object.single "repository" [] object


target : SelectionSet target Api.Object.GitObject -> FieldDecoder target Api.Object.Ref
target object =
    Object.single "target" [] object
