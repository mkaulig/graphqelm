module Github.Object.PullRequestReviewComment exposing (..)

import Github.Enum.CommentAuthorAssociation
import Github.Enum.CommentCannotUpdateReason
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.PullRequestReviewComment
selection constructor =
    Object.selection constructor


{-| The actor who authored the comment.
-}
author : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.PullRequestReviewComment
author object =
    Object.selectionFieldDecoder "author" [] object (identity >> Decode.maybe)


{-| Author's association with the subject of the comment.
-}
authorAssociation : FieldDecoder Github.Enum.CommentAuthorAssociation.CommentAuthorAssociation Github.Object.PullRequestReviewComment
authorAssociation =
    Object.fieldDecoder "authorAssociation" [] Github.Enum.CommentAuthorAssociation.decoder


{-| The comment body of this review comment.
-}
body : FieldDecoder String Github.Object.PullRequestReviewComment
body =
    Object.fieldDecoder "body" [] Decode.string


{-| The comment body of this review comment rendered to HTML.
-}
bodyHTML : FieldDecoder String Github.Object.PullRequestReviewComment
bodyHTML =
    Object.fieldDecoder "bodyHTML" [] Decode.string


{-| The comment body of this review comment rendered as plain text.
-}
bodyText : FieldDecoder String Github.Object.PullRequestReviewComment
bodyText =
    Object.fieldDecoder "bodyText" [] Decode.string


{-| Identifies the commit associated with the comment.
-}
commit : SelectionSet selection Github.Object.Commit -> FieldDecoder selection Github.Object.PullRequestReviewComment
commit object =
    Object.selectionFieldDecoder "commit" [] object identity


{-| Identifies when the comment was created.
-}
createdAt : FieldDecoder String Github.Object.PullRequestReviewComment
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : FieldDecoder Bool Github.Object.PullRequestReviewComment
createdViaEmail =
    Object.fieldDecoder "createdViaEmail" [] Decode.bool


{-| The diff hunk to which the comment applies.
-}
diffHunk : FieldDecoder String Github.Object.PullRequestReviewComment
diffHunk =
    Object.fieldDecoder "diffHunk" [] Decode.string


{-| Identifies when the comment was created in a draft state.
-}
draftedAt : FieldDecoder String Github.Object.PullRequestReviewComment
draftedAt =
    Object.fieldDecoder "draftedAt" [] Decode.string


{-| The actor who edited the comment.
-}
editor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.PullRequestReviewComment
editor object =
    Object.selectionFieldDecoder "editor" [] object (identity >> Decode.maybe)


id : FieldDecoder String Github.Object.PullRequestReviewComment
id =
    Object.fieldDecoder "id" [] Decode.string


{-| The moment the editor made the last edit
-}
lastEditedAt : FieldDecoder (Maybe String) Github.Object.PullRequestReviewComment
lastEditedAt =
    Object.fieldDecoder "lastEditedAt" [] (Decode.string |> Decode.maybe)


{-| Identifies the original commit associated with the comment.
-}
originalCommit : SelectionSet selection Github.Object.Commit -> FieldDecoder (Maybe selection) Github.Object.PullRequestReviewComment
originalCommit object =
    Object.selectionFieldDecoder "originalCommit" [] object (identity >> Decode.maybe)


{-| The original line index in the diff to which the comment applies.
-}
originalPosition : FieldDecoder Int Github.Object.PullRequestReviewComment
originalPosition =
    Object.fieldDecoder "originalPosition" [] Decode.int


{-| The path to which the comment applies.
-}
path : FieldDecoder String Github.Object.PullRequestReviewComment
path =
    Object.fieldDecoder "path" [] Decode.string


{-| The line index in the diff to which the comment applies.
-}
position : FieldDecoder (Maybe Int) Github.Object.PullRequestReviewComment
position =
    Object.fieldDecoder "position" [] (Decode.int |> Decode.maybe)


{-| Identifies when the comment was published at.
-}
publishedAt : FieldDecoder (Maybe String) Github.Object.PullRequestReviewComment
publishedAt =
    Object.fieldDecoder "publishedAt" [] (Decode.string |> Decode.maybe)


{-| The pull request associated with this review comment.
-}
pullRequest : SelectionSet selection Github.Object.PullRequest -> FieldDecoder selection Github.Object.PullRequestReviewComment
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity


{-| The pull request review associated with this review comment.
-}
pullRequestReview : SelectionSet selection Github.Object.PullRequestReview -> FieldDecoder (Maybe selection) Github.Object.PullRequestReviewComment
pullRequestReview object =
    Object.selectionFieldDecoder "pullRequestReview" [] object (identity >> Decode.maybe)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet selection Github.Object.ReactionGroup -> FieldDecoder (Maybe (List selection)) Github.Object.PullRequestReviewComment
reactionGroups object =
    Object.selectionFieldDecoder "reactionGroups" [] object (identity >> Decode.list >> Decode.maybe)


{-| A list of Reactions left on the Issue.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - content - Allows filtering Reactions by emoji.
  - orderBy - Allows specifying the order in which reactions are returned.

-}
reactions : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, content : OptionalArgument Github.Enum.ReactionContent.ReactionContent, orderBy : OptionalArgument Value } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, content : OptionalArgument Github.Enum.ReactionContent.ReactionContent, orderBy : OptionalArgument Value }) -> SelectionSet selection Github.Object.ReactionConnection -> FieldDecoder selection Github.Object.PullRequestReviewComment
reactions fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, content = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "content" filledInOptionals.content (Encode.enum Github.Enum.ReactionContent.toString), Argument.optional "orderBy" filledInOptionals.orderBy identity ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "reactions" optionalArgs object identity


{-| The comment this is a reply to.
-}
replyTo : SelectionSet selection Github.Object.PullRequestReviewComment -> FieldDecoder (Maybe selection) Github.Object.PullRequestReviewComment
replyTo object =
    Object.selectionFieldDecoder "replyTo" [] object (identity >> Decode.maybe)


{-| The repository associated with this node.
-}
repository : SelectionSet selection Github.Object.Repository -> FieldDecoder selection Github.Object.PullRequestReviewComment
repository object =
    Object.selectionFieldDecoder "repository" [] object identity


{-| The HTTP path permalink for this review comment.
-}
resourcePath : FieldDecoder String Github.Object.PullRequestReviewComment
resourcePath =
    Object.fieldDecoder "resourcePath" [] Decode.string


{-| Identifies when the comment was last updated.
-}
updatedAt : FieldDecoder String Github.Object.PullRequestReviewComment
updatedAt =
    Object.fieldDecoder "updatedAt" [] Decode.string


{-| The HTTP URL permalink for this review comment.
-}
url : FieldDecoder String Github.Object.PullRequestReviewComment
url =
    Object.fieldDecoder "url" [] Decode.string


{-| Check if the current viewer can delete this object.
-}
viewerCanDelete : FieldDecoder Bool Github.Object.PullRequestReviewComment
viewerCanDelete =
    Object.fieldDecoder "viewerCanDelete" [] Decode.bool


{-| Can user react to this subject
-}
viewerCanReact : FieldDecoder Bool Github.Object.PullRequestReviewComment
viewerCanReact =
    Object.fieldDecoder "viewerCanReact" [] Decode.bool


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : FieldDecoder Bool Github.Object.PullRequestReviewComment
viewerCanUpdate =
    Object.fieldDecoder "viewerCanUpdate" [] Decode.bool


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : FieldDecoder (List Github.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) Github.Object.PullRequestReviewComment
viewerCannotUpdateReasons =
    Object.fieldDecoder "viewerCannotUpdateReasons" [] (Github.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : FieldDecoder Bool Github.Object.PullRequestReviewComment
viewerDidAuthor =
    Object.fieldDecoder "viewerDidAuthor" [] Decode.bool
