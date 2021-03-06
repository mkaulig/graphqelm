module Github.Interface.RepositoryInfo exposing (..)

import Github.Enum.RepositoryLockReason
import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.RepositoryInfo
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.RepositoryInfo) -> SelectionSet (a -> constructor) Github.Interface.RepositoryInfo
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onRepository : SelectionSet selection Github.Object.Repository -> FragmentSelectionSet selection Github.Interface.RepositoryInfo
onRepository (SelectionSet fields decoder) =
    FragmentSelectionSet "Repository" fields decoder


onRepositoryInvitationRepository : SelectionSet selection Github.Object.RepositoryInvitationRepository -> FragmentSelectionSet selection Github.Interface.RepositoryInfo
onRepositoryInvitationRepository (SelectionSet fields decoder) =
    FragmentSelectionSet "RepositoryInvitationRepository" fields decoder


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Interface.RepositoryInfo
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


{-| The description of the repository.
-}
description : FieldDecoder (Maybe String) Github.Interface.RepositoryInfo
description =
    Object.fieldDecoder "description" [] (Decode.string |> Decode.maybe)


{-| The description of the repository rendered to HTML.
-}
descriptionHTML : FieldDecoder String Github.Interface.RepositoryInfo
descriptionHTML =
    Object.fieldDecoder "descriptionHTML" [] Decode.string


{-| Returns how many forks there are of this repository in the whole network.
-}
forkCount : FieldDecoder Int Github.Interface.RepositoryInfo
forkCount =
    Object.fieldDecoder "forkCount" [] Decode.int


{-| Indicates if the repository has issues feature enabled.
-}
hasIssuesEnabled : FieldDecoder Bool Github.Interface.RepositoryInfo
hasIssuesEnabled =
    Object.fieldDecoder "hasIssuesEnabled" [] Decode.bool


{-| Indicates if the repository has wiki feature enabled.
-}
hasWikiEnabled : FieldDecoder Bool Github.Interface.RepositoryInfo
hasWikiEnabled =
    Object.fieldDecoder "hasWikiEnabled" [] Decode.bool


{-| The repository's URL.
-}
homepageUrl : FieldDecoder (Maybe String) Github.Interface.RepositoryInfo
homepageUrl =
    Object.fieldDecoder "homepageUrl" [] (Decode.string |> Decode.maybe)


{-| Indicates if the repository is unmaintained.
-}
isArchived : FieldDecoder Bool Github.Interface.RepositoryInfo
isArchived =
    Object.fieldDecoder "isArchived" [] Decode.bool


{-| Identifies if the repository is a fork.
-}
isFork : FieldDecoder Bool Github.Interface.RepositoryInfo
isFork =
    Object.fieldDecoder "isFork" [] Decode.bool


{-| Indicates if the repository has been locked or not.
-}
isLocked : FieldDecoder Bool Github.Interface.RepositoryInfo
isLocked =
    Object.fieldDecoder "isLocked" [] Decode.bool


{-| Identifies if the repository is a mirror.
-}
isMirror : FieldDecoder Bool Github.Interface.RepositoryInfo
isMirror =
    Object.fieldDecoder "isMirror" [] Decode.bool


{-| Identifies if the repository is private.
-}
isPrivate : FieldDecoder Bool Github.Interface.RepositoryInfo
isPrivate =
    Object.fieldDecoder "isPrivate" [] Decode.bool


{-| The license associated with the repository
-}
licenseInfo : SelectionSet selection Github.Object.License -> FieldDecoder (Maybe selection) Github.Interface.RepositoryInfo
licenseInfo object =
    Object.selectionFieldDecoder "licenseInfo" [] object (identity >> Decode.maybe)


{-| The reason the repository has been locked.
-}
lockReason : FieldDecoder (Maybe Github.Enum.RepositoryLockReason.RepositoryLockReason) Github.Interface.RepositoryInfo
lockReason =
    Object.fieldDecoder "lockReason" [] (Github.Enum.RepositoryLockReason.decoder |> Decode.maybe)


{-| The repository's original mirror URL.
-}
mirrorUrl : FieldDecoder (Maybe String) Github.Interface.RepositoryInfo
mirrorUrl =
    Object.fieldDecoder "mirrorUrl" [] (Decode.string |> Decode.maybe)


{-| The name of the repository.
-}
name : FieldDecoder String Github.Interface.RepositoryInfo
name =
    Object.fieldDecoder "name" [] Decode.string


{-| The repository's name with owner.
-}
nameWithOwner : FieldDecoder String Github.Interface.RepositoryInfo
nameWithOwner =
    Object.fieldDecoder "nameWithOwner" [] Decode.string


{-| The User owner of the repository.
-}
owner : SelectionSet selection Github.Interface.RepositoryOwner -> FieldDecoder selection Github.Interface.RepositoryInfo
owner object =
    Object.selectionFieldDecoder "owner" [] object identity


{-| Identifies when the repository was last pushed to.
-}
pushedAt : FieldDecoder (Maybe String) Github.Interface.RepositoryInfo
pushedAt =
    Object.fieldDecoder "pushedAt" [] (Decode.string |> Decode.maybe)


{-| The HTTP path for this repository
-}
resourcePath : FieldDecoder String Github.Interface.RepositoryInfo
resourcePath =
    Object.fieldDecoder "resourcePath" [] Decode.string


{-| A description of the repository, rendered to HTML without any links in it.

  - limit - How many characters to return.

-}
shortDescriptionHTML : ({ limit : OptionalArgument Int } -> { limit : OptionalArgument Int }) -> FieldDecoder String Github.Interface.RepositoryInfo
shortDescriptionHTML fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { limit = Absent }

        optionalArgs =
            [ Argument.optional "limit" filledInOptionals.limit Encode.int ]
                |> List.filterMap identity
    in
    Object.fieldDecoder "shortDescriptionHTML" optionalArgs Decode.string


{-| The HTTP URL for this repository
-}
url : FieldDecoder String Github.Interface.RepositoryInfo
url =
    Object.fieldDecoder "url" [] Decode.string
