module Github.Query exposing (..)

import Github.Enum.SearchType
import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Operation exposing (RootQuery)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)


{-| Select fields to build up a top-level query. The request can be sent with
functions from `Graphqelm.Http`.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) RootQuery
selection constructor =
    Object.selection constructor


{-| Look up a code of conduct by its key

  - key - The code of conduct's key

-}
codeOfConduct : { key : String } -> SelectionSet selection Github.Object.CodeOfConduct -> FieldDecoder (Maybe selection) RootQuery
codeOfConduct requiredArgs object =
    Object.selectionFieldDecoder "codeOfConduct" [ Argument.required "key" requiredArgs.key Encode.string ] object (identity >> Decode.maybe)


{-| Look up a code of conduct by its key
-}
codesOfConduct : SelectionSet selection Github.Object.CodeOfConduct -> FieldDecoder (Maybe (List (Maybe selection))) RootQuery
codesOfConduct object =
    Object.selectionFieldDecoder "codesOfConduct" [] object (identity >> Decode.maybe >> Decode.list >> Decode.maybe)


{-| Look up an open source license by its key

  - key - The license's downcased SPDX ID

-}
license : { key : String } -> SelectionSet selection Github.Object.License -> FieldDecoder (Maybe selection) RootQuery
license requiredArgs object =
    Object.selectionFieldDecoder "license" [ Argument.required "key" requiredArgs.key Encode.string ] object (identity >> Decode.maybe)


{-| Return a list of known open source licenses
-}
licenses : SelectionSet selection Github.Object.License -> FieldDecoder (List (Maybe selection)) RootQuery
licenses object =
    Object.selectionFieldDecoder "licenses" [] object (identity >> Decode.maybe >> Decode.list)


{-| Get alphabetically sorted list of Marketplace categories

  - excludeEmpty - Exclude categories with no listings.

-}
marketplaceCategories : ({ excludeEmpty : OptionalArgument Bool } -> { excludeEmpty : OptionalArgument Bool }) -> SelectionSet selection Github.Object.MarketplaceCategory -> FieldDecoder (List selection) RootQuery
marketplaceCategories fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { excludeEmpty = Absent }

        optionalArgs =
            [ Argument.optional "excludeEmpty" filledInOptionals.excludeEmpty Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "marketplaceCategories" optionalArgs object (identity >> Decode.list)


{-| Look up a Marketplace category by its slug.

  - slug - The URL slug of the category.

-}
marketplaceCategory : { slug : String } -> SelectionSet selection Github.Object.MarketplaceCategory -> FieldDecoder (Maybe selection) RootQuery
marketplaceCategory requiredArgs object =
    Object.selectionFieldDecoder "marketplaceCategory" [ Argument.required "slug" requiredArgs.slug Encode.string ] object (identity >> Decode.maybe)


{-| Look up a single Marketplace listing

  - slug - Select the listing that matches this slug. It's the short name of the listing used in its URL.

-}
marketplaceListing : { slug : String } -> SelectionSet selection Github.Object.MarketplaceListing -> FieldDecoder (Maybe selection) RootQuery
marketplaceListing requiredArgs object =
    Object.selectionFieldDecoder "marketplaceListing" [ Argument.required "slug" requiredArgs.slug Encode.string ] object (identity >> Decode.maybe)


{-| Look up Marketplace listings

  - first - Returns the first _n_ elements from the list.

  - after - Returns the elements in the list that come after the specified global ID.

  - last - Returns the last _n_ elements from the list.

  - before - Returns the elements in the list that come before the specified global ID.

  - categorySlug - Select only listings with the given category.

  - viewerCanAdmin - Select listings to which user has admin access. If omitted, listings visible to the
    viewer are returned.

  - adminId - Select listings that can be administered by the specified user.

  - organizationId - Select listings for products owned by the specified organization.

  - allStates - Select listings visible to the viewer even if they are not approved. If omitted or
    false, only approved listings will be returned.

  - slugs - Select the listings with these slugs, if they are visible to the viewer.

  - primaryCategoryOnly - Select only listings where the primary category matches the given category slug.

  - withFreeTrialsOnly - Select only listings that offer a free trial.

-}
marketplaceListings : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, categorySlug : OptionalArgument String, viewerCanAdmin : OptionalArgument Bool, adminId : OptionalArgument String, organizationId : OptionalArgument String, allStates : OptionalArgument Bool, slugs : OptionalArgument (List (Maybe String)), primaryCategoryOnly : OptionalArgument Bool, withFreeTrialsOnly : OptionalArgument Bool } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, categorySlug : OptionalArgument String, viewerCanAdmin : OptionalArgument Bool, adminId : OptionalArgument String, organizationId : OptionalArgument String, allStates : OptionalArgument Bool, slugs : OptionalArgument (List (Maybe String)), primaryCategoryOnly : OptionalArgument Bool, withFreeTrialsOnly : OptionalArgument Bool }) -> SelectionSet selection Github.Object.MarketplaceListingConnection -> FieldDecoder selection RootQuery
marketplaceListings fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, categorySlug = Absent, viewerCanAdmin = Absent, adminId = Absent, organizationId = Absent, allStates = Absent, slugs = Absent, primaryCategoryOnly = Absent, withFreeTrialsOnly = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "categorySlug" filledInOptionals.categorySlug Encode.string, Argument.optional "viewerCanAdmin" filledInOptionals.viewerCanAdmin Encode.bool, Argument.optional "adminId" filledInOptionals.adminId Encode.string, Argument.optional "organizationId" filledInOptionals.organizationId Encode.string, Argument.optional "allStates" filledInOptionals.allStates Encode.bool, Argument.optional "slugs" filledInOptionals.slugs (Encode.string |> Encode.maybe |> Encode.list), Argument.optional "primaryCategoryOnly" filledInOptionals.primaryCategoryOnly Encode.bool, Argument.optional "withFreeTrialsOnly" filledInOptionals.withFreeTrialsOnly Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "marketplaceListings" optionalArgs object identity


{-| Return information about the GitHub instance
-}
meta : SelectionSet selection Github.Object.GitHubMetadata -> FieldDecoder selection RootQuery
meta object =
    Object.selectionFieldDecoder "meta" [] object identity


{-| Fetches an object given its ID.

  - id - ID of the object.

-}
node : { id : String } -> SelectionSet selection Github.Interface.Node -> FieldDecoder (Maybe selection) RootQuery
node requiredArgs object =
    Object.selectionFieldDecoder "node" [ Argument.required "id" requiredArgs.id Encode.string ] object (identity >> Decode.maybe)


{-| Lookup nodes by a list of IDs.

  - ids - The list of node IDs.

-}
nodes : { ids : List String } -> SelectionSet selection Github.Interface.Node -> FieldDecoder (List (Maybe selection)) RootQuery
nodes requiredArgs object =
    Object.selectionFieldDecoder "nodes" [ Argument.required "ids" requiredArgs.ids (Encode.string |> Encode.list) ] object (identity >> Decode.maybe >> Decode.list)


{-| Lookup a organization by login.

  - login - The organization's login.

-}
organization : { login : String } -> SelectionSet selection Github.Object.Organization -> FieldDecoder (Maybe selection) RootQuery
organization requiredArgs object =
    Object.selectionFieldDecoder "organization" [ Argument.required "login" requiredArgs.login Encode.string ] object (identity >> Decode.maybe)


{-| The client's rate limit information.

  - dryRun - If true, calculate the cost for the query without evaluating it

-}
rateLimit : ({ dryRun : OptionalArgument Bool } -> { dryRun : OptionalArgument Bool }) -> SelectionSet selection Github.Object.RateLimit -> FieldDecoder (Maybe selection) RootQuery
rateLimit fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { dryRun = Absent }

        optionalArgs =
            [ Argument.optional "dryRun" filledInOptionals.dryRun Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "rateLimit" optionalArgs object (identity >> Decode.maybe)


{-| Hack to workaround <https://github.com/facebook/relay/issues/112> re-exposing the root query object
-}
relay : SelectionSet selection RootQuery -> FieldDecoder selection RootQuery
relay object =
    Object.selectionFieldDecoder "relay" [] object identity


{-| Lookup a given repository by the owner and repository name.

  - owner - The login field of a user or organization
  - name - The name of the repository

-}
repository : { owner : String, name : String } -> SelectionSet selection Github.Object.Repository -> FieldDecoder (Maybe selection) RootQuery
repository requiredArgs object =
    Object.selectionFieldDecoder "repository" [ Argument.required "owner" requiredArgs.owner Encode.string, Argument.required "name" requiredArgs.name Encode.string ] object (identity >> Decode.maybe)


{-| Lookup a repository owner (ie. either a User or an Organization) by login.

  - login - The username to lookup the owner by.

-}
repositoryOwner : { login : String } -> SelectionSet selection Github.Interface.RepositoryOwner -> FieldDecoder (Maybe selection) RootQuery
repositoryOwner requiredArgs object =
    Object.selectionFieldDecoder "repositoryOwner" [ Argument.required "login" requiredArgs.login Encode.string ] object (identity >> Decode.maybe)


{-| Lookup resource by a URL.

  - url - The URL.

-}
resource : { url : String } -> SelectionSet selection Github.Interface.UniformResourceLocatable -> FieldDecoder (Maybe selection) RootQuery
resource requiredArgs object =
    Object.selectionFieldDecoder "resource" [ Argument.required "url" requiredArgs.url Encode.string ] object (identity >> Decode.maybe)


{-| Perform a search across resources.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - query - The search string to look for.
  - type_ - The types of search items to search within.

-}
search : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> { query : String, type_ : Github.Enum.SearchType.SearchType } -> SelectionSet selection Github.Object.SearchResultItemConnection -> FieldDecoder selection RootQuery
search fillInOptionals requiredArgs object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "search" (optionalArgs ++ [ Argument.required "query" requiredArgs.query Encode.string, Argument.required "type" requiredArgs.type_ (Encode.enum Github.Enum.SearchType.toString) ]) object identity


{-| Look up a topic by name.

  - name - The topic's name.

-}
topic : { name : String } -> SelectionSet selection Github.Object.Topic -> FieldDecoder (Maybe selection) RootQuery
topic requiredArgs object =
    Object.selectionFieldDecoder "topic" [ Argument.required "name" requiredArgs.name Encode.string ] object (identity >> Decode.maybe)


{-| Lookup a user by login.

  - login - The user's login.

-}
user : { login : String } -> SelectionSet selection Github.Object.User -> FieldDecoder (Maybe selection) RootQuery
user requiredArgs object =
    Object.selectionFieldDecoder "user" [ Argument.required "login" requiredArgs.login Encode.string ] object (identity >> Decode.maybe)


{-| The currently authenticated user.
-}
viewer : SelectionSet selection Github.Object.User -> FieldDecoder selection RootQuery
viewer object =
    Object.selectionFieldDecoder "viewer" [] object identity
