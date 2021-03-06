module Github.Object.Team exposing (..)

import Github.Enum.SubscriptionState
import Github.Enum.TeamMemberRole
import Github.Enum.TeamMembershipType
import Github.Enum.TeamPrivacy
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Team
selection constructor =
    Object.selection constructor


{-| A list of teams that are ancestors of this team.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
ancestors : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.TeamConnection -> FieldDecoder selection Github.Object.Team
ancestors fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "ancestors" optionalArgs object identity


{-| List of child teams belonging to this team

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - orderBy - Order for connection
  - userLogins - User logins to filter by
  - immediateOnly - Whether to list immediate child teams or all descendant child teams.

-}
childTeams : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, orderBy : OptionalArgument Value, userLogins : OptionalArgument (List String), immediateOnly : OptionalArgument Bool } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, orderBy : OptionalArgument Value, userLogins : OptionalArgument (List String), immediateOnly : OptionalArgument Bool }) -> SelectionSet selection Github.Object.TeamConnection -> FieldDecoder selection Github.Object.Team
childTeams fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, orderBy = Absent, userLogins = Absent, immediateOnly = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "orderBy" filledInOptionals.orderBy identity, Argument.optional "userLogins" filledInOptionals.userLogins (Encode.string |> Encode.list), Argument.optional "immediateOnly" filledInOptionals.immediateOnly Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "childTeams" optionalArgs object identity


{-| The slug corresponding to the organization and team.
-}
combinedSlug : FieldDecoder String Github.Object.Team
combinedSlug =
    Object.fieldDecoder "combinedSlug" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.Team
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


{-| The description of the team.
-}
description : FieldDecoder (Maybe String) Github.Object.Team
description =
    Object.fieldDecoder "description" [] (Decode.string |> Decode.maybe)


{-| The HTTP path for editing this team
-}
editTeamResourcePath : FieldDecoder String Github.Object.Team
editTeamResourcePath =
    Object.fieldDecoder "editTeamResourcePath" [] Decode.string


{-| The HTTP URL for editing this team
-}
editTeamUrl : FieldDecoder String Github.Object.Team
editTeamUrl =
    Object.fieldDecoder "editTeamUrl" [] Decode.string


id : FieldDecoder String Github.Object.Team
id =
    Object.fieldDecoder "id" [] Decode.string


{-| A list of pending invitations for users to this team

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
invitations : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.OrganizationInvitationConnection -> FieldDecoder (Maybe selection) Github.Object.Team
invitations fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "invitations" optionalArgs object (identity >> Decode.maybe)


{-| A list of users who are members of this team.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - query - The search string to look for.
  - membership - Filter by membership type
  - role - Filter by team member role

-}
members : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, query : OptionalArgument String, membership : OptionalArgument Github.Enum.TeamMembershipType.TeamMembershipType, role : OptionalArgument Github.Enum.TeamMemberRole.TeamMemberRole } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, query : OptionalArgument String, membership : OptionalArgument Github.Enum.TeamMembershipType.TeamMembershipType, role : OptionalArgument Github.Enum.TeamMemberRole.TeamMemberRole }) -> SelectionSet selection Github.Object.TeamMemberConnection -> FieldDecoder selection Github.Object.Team
members fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, query = Absent, membership = Absent, role = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "query" filledInOptionals.query Encode.string, Argument.optional "membership" filledInOptionals.membership (Encode.enum Github.Enum.TeamMembershipType.toString), Argument.optional "role" filledInOptionals.role (Encode.enum Github.Enum.TeamMemberRole.toString) ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "members" optionalArgs object identity


{-| The HTTP path for the team' members
-}
membersResourcePath : FieldDecoder String Github.Object.Team
membersResourcePath =
    Object.fieldDecoder "membersResourcePath" [] Decode.string


{-| The HTTP URL for the team' members
-}
membersUrl : FieldDecoder String Github.Object.Team
membersUrl =
    Object.fieldDecoder "membersUrl" [] Decode.string


{-| The name of the team.
-}
name : FieldDecoder String Github.Object.Team
name =
    Object.fieldDecoder "name" [] Decode.string


{-| The HTTP path creating a new team
-}
newTeamResourcePath : FieldDecoder String Github.Object.Team
newTeamResourcePath =
    Object.fieldDecoder "newTeamResourcePath" [] Decode.string


{-| The HTTP URL creating a new team
-}
newTeamUrl : FieldDecoder String Github.Object.Team
newTeamUrl =
    Object.fieldDecoder "newTeamUrl" [] Decode.string


{-| The organization that owns this team.
-}
organization : SelectionSet selection Github.Object.Organization -> FieldDecoder selection Github.Object.Team
organization object =
    Object.selectionFieldDecoder "organization" [] object identity


{-| The parent team of the team.
-}
parentTeam : SelectionSet selection Github.Object.Team -> FieldDecoder (Maybe selection) Github.Object.Team
parentTeam object =
    Object.selectionFieldDecoder "parentTeam" [] object (identity >> Decode.maybe)


{-| The level of privacy the team has.
-}
privacy : FieldDecoder Github.Enum.TeamPrivacy.TeamPrivacy Github.Object.Team
privacy =
    Object.fieldDecoder "privacy" [] Github.Enum.TeamPrivacy.decoder


{-| A list of repositories this team has access to.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - query - The search string to look for.
  - orderBy - Order for the connection.

-}
repositories : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, query : OptionalArgument String, orderBy : OptionalArgument Value } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, query : OptionalArgument String, orderBy : OptionalArgument Value }) -> SelectionSet selection Github.Object.TeamRepositoryConnection -> FieldDecoder selection Github.Object.Team
repositories fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, query = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "query" filledInOptionals.query Encode.string, Argument.optional "orderBy" filledInOptionals.orderBy identity ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "repositories" optionalArgs object identity


{-| The HTTP path for this team's repositories
-}
repositoriesResourcePath : FieldDecoder String Github.Object.Team
repositoriesResourcePath =
    Object.fieldDecoder "repositoriesResourcePath" [] Decode.string


{-| The HTTP URL for this team's repositories
-}
repositoriesUrl : FieldDecoder String Github.Object.Team
repositoriesUrl =
    Object.fieldDecoder "repositoriesUrl" [] Decode.string


{-| The HTTP path for this team
-}
resourcePath : FieldDecoder String Github.Object.Team
resourcePath =
    Object.fieldDecoder "resourcePath" [] Decode.string


{-| The slug corresponding to the team.
-}
slug : FieldDecoder String Github.Object.Team
slug =
    Object.fieldDecoder "slug" [] Decode.string


{-| The HTTP path for this team's teams
-}
teamsResourcePath : FieldDecoder String Github.Object.Team
teamsResourcePath =
    Object.fieldDecoder "teamsResourcePath" [] Decode.string


{-| The HTTP URL for this team's teams
-}
teamsUrl : FieldDecoder String Github.Object.Team
teamsUrl =
    Object.fieldDecoder "teamsUrl" [] Decode.string


{-| The HTTP URL for this team
-}
url : FieldDecoder String Github.Object.Team
url =
    Object.fieldDecoder "url" [] Decode.string


{-| Team is adminable by the viewer.
-}
viewerCanAdminister : FieldDecoder Bool Github.Object.Team
viewerCanAdminister =
    Object.fieldDecoder "viewerCanAdminister" [] Decode.bool


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : FieldDecoder Bool Github.Object.Team
viewerCanSubscribe =
    Object.fieldDecoder "viewerCanSubscribe" [] Decode.bool


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : FieldDecoder Github.Enum.SubscriptionState.SubscriptionState Github.Object.Team
viewerSubscription =
    Object.fieldDecoder "viewerSubscription" [] Github.Enum.SubscriptionState.decoder
