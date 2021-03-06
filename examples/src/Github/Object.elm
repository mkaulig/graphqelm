module Github.Object exposing (..)


type AcceptTopicSuggestionPayload
    = AcceptTopicSuggestionPayload


type AddCommentPayload
    = AddCommentPayload


type AddProjectCardPayload
    = AddProjectCardPayload


type AddProjectColumnPayload
    = AddProjectColumnPayload


type AddPullRequestReviewCommentPayload
    = AddPullRequestReviewCommentPayload


type AddPullRequestReviewPayload
    = AddPullRequestReviewPayload


type AddReactionPayload
    = AddReactionPayload


type AddStarPayload
    = AddStarPayload


type AddedToProjectEvent
    = AddedToProjectEvent


type AssignedEvent
    = AssignedEvent


type BaseRefChangedEvent
    = BaseRefChangedEvent


type BaseRefForcePushedEvent
    = BaseRefForcePushedEvent


type Blame
    = Blame


type BlameRange
    = BlameRange


type Blob
    = Blob


type Bot
    = Bot


type ClosedEvent
    = ClosedEvent


type CodeOfConduct
    = CodeOfConduct


type CommentDeletedEvent
    = CommentDeletedEvent


type Commit
    = Commit


type CommitComment
    = CommitComment


type CommitCommentConnection
    = CommitCommentConnection


type CommitCommentEdge
    = CommitCommentEdge


type CommitCommentThread
    = CommitCommentThread


type CommitConnection
    = CommitConnection


type CommitEdge
    = CommitEdge


type CommitHistoryConnection
    = CommitHistoryConnection


type ConvertedNoteToIssueEvent
    = ConvertedNoteToIssueEvent


type CreateProjectPayload
    = CreateProjectPayload


type CrossReferencedEvent
    = CrossReferencedEvent


type DeclineTopicSuggestionPayload
    = DeclineTopicSuggestionPayload


type DeleteProjectCardPayload
    = DeleteProjectCardPayload


type DeleteProjectColumnPayload
    = DeleteProjectColumnPayload


type DeleteProjectPayload
    = DeleteProjectPayload


type DeletePullRequestReviewPayload
    = DeletePullRequestReviewPayload


type DemilestonedEvent
    = DemilestonedEvent


type DeployKey
    = DeployKey


type DeployKeyConnection
    = DeployKeyConnection


type DeployKeyEdge
    = DeployKeyEdge


type DeployedEvent
    = DeployedEvent


type Deployment
    = Deployment


type DeploymentConnection
    = DeploymentConnection


type DeploymentEdge
    = DeploymentEdge


type DeploymentStatus
    = DeploymentStatus


type DeploymentStatusConnection
    = DeploymentStatusConnection


type DeploymentStatusEdge
    = DeploymentStatusEdge


type DismissPullRequestReviewPayload
    = DismissPullRequestReviewPayload


type ExternalIdentity
    = ExternalIdentity


type ExternalIdentityConnection
    = ExternalIdentityConnection


type ExternalIdentityEdge
    = ExternalIdentityEdge


type ExternalIdentitySamlAttributes
    = ExternalIdentitySamlAttributes


type ExternalIdentityScimAttributes
    = ExternalIdentityScimAttributes


type FollowerConnection
    = FollowerConnection


type FollowingConnection
    = FollowingConnection


type Gist
    = Gist


type GistComment
    = GistComment


type GistCommentConnection
    = GistCommentConnection


type GistCommentEdge
    = GistCommentEdge


type GistConnection
    = GistConnection


type GistEdge
    = GistEdge


type GitActor
    = GitActor


type GitHubMetadata
    = GitHubMetadata


type GpgSignature
    = GpgSignature


type HeadRefDeletedEvent
    = HeadRefDeletedEvent


type HeadRefForcePushedEvent
    = HeadRefForcePushedEvent


type HeadRefRestoredEvent
    = HeadRefRestoredEvent


type Issue
    = Issue


type IssueComment
    = IssueComment


type IssueCommentConnection
    = IssueCommentConnection


type IssueCommentEdge
    = IssueCommentEdge


type IssueConnection
    = IssueConnection


type IssueEdge
    = IssueEdge


type IssueTimelineConnection
    = IssueTimelineConnection


type IssueTimelineItemEdge
    = IssueTimelineItemEdge


type Label
    = Label


type LabelConnection
    = LabelConnection


type LabelEdge
    = LabelEdge


type LabeledEvent
    = LabeledEvent


type Language
    = Language


type LanguageConnection
    = LanguageConnection


type LanguageEdge
    = LanguageEdge


type License
    = License


type LicenseRule
    = LicenseRule


type LockedEvent
    = LockedEvent


type MarketplaceCategory
    = MarketplaceCategory


type MarketplaceListing
    = MarketplaceListing


type MarketplaceListingConnection
    = MarketplaceListingConnection


type MarketplaceListingEdge
    = MarketplaceListingEdge


type MentionedEvent
    = MentionedEvent


type MergedEvent
    = MergedEvent


type Milestone
    = Milestone


type MilestoneConnection
    = MilestoneConnection


type MilestoneEdge
    = MilestoneEdge


type MilestonedEvent
    = MilestonedEvent


type MoveProjectCardPayload
    = MoveProjectCardPayload


type MoveProjectColumnPayload
    = MoveProjectColumnPayload


type MovedColumnsInProjectEvent
    = MovedColumnsInProjectEvent


type Organization
    = Organization


type OrganizationConnection
    = OrganizationConnection


type OrganizationEdge
    = OrganizationEdge


type OrganizationIdentityProvider
    = OrganizationIdentityProvider


type OrganizationInvitation
    = OrganizationInvitation


type OrganizationInvitationConnection
    = OrganizationInvitationConnection


type OrganizationInvitationEdge
    = OrganizationInvitationEdge


type PageInfo
    = PageInfo


type Project
    = Project


type ProjectCard
    = ProjectCard


type ProjectCardConnection
    = ProjectCardConnection


type ProjectCardEdge
    = ProjectCardEdge


type ProjectColumn
    = ProjectColumn


type ProjectColumnConnection
    = ProjectColumnConnection


type ProjectColumnEdge
    = ProjectColumnEdge


type ProjectConnection
    = ProjectConnection


type ProjectEdge
    = ProjectEdge


type ProtectedBranch
    = ProtectedBranch


type ProtectedBranchConnection
    = ProtectedBranchConnection


type ProtectedBranchEdge
    = ProtectedBranchEdge


type PublicKey
    = PublicKey


type PublicKeyConnection
    = PublicKeyConnection


type PublicKeyEdge
    = PublicKeyEdge


type PullRequest
    = PullRequest


type PullRequestCommit
    = PullRequestCommit


type PullRequestCommitConnection
    = PullRequestCommitConnection


type PullRequestCommitEdge
    = PullRequestCommitEdge


type PullRequestConnection
    = PullRequestConnection


type PullRequestEdge
    = PullRequestEdge


type PullRequestReview
    = PullRequestReview


type PullRequestReviewComment
    = PullRequestReviewComment


type PullRequestReviewCommentConnection
    = PullRequestReviewCommentConnection


type PullRequestReviewCommentEdge
    = PullRequestReviewCommentEdge


type PullRequestReviewConnection
    = PullRequestReviewConnection


type PullRequestReviewEdge
    = PullRequestReviewEdge


type PullRequestReviewThread
    = PullRequestReviewThread


type PullRequestTimelineConnection
    = PullRequestTimelineConnection


type PullRequestTimelineItemEdge
    = PullRequestTimelineItemEdge


type PushAllowance
    = PushAllowance


type PushAllowanceConnection
    = PushAllowanceConnection


type PushAllowanceEdge
    = PushAllowanceEdge


type RateLimit
    = RateLimit


type ReactingUserConnection
    = ReactingUserConnection


type ReactingUserEdge
    = ReactingUserEdge


type Reaction
    = Reaction


type ReactionConnection
    = ReactionConnection


type ReactionEdge
    = ReactionEdge


type ReactionGroup
    = ReactionGroup


type Ref
    = Ref


type RefConnection
    = RefConnection


type RefEdge
    = RefEdge


type ReferencedEvent
    = ReferencedEvent


type Release
    = Release


type ReleaseAsset
    = ReleaseAsset


type ReleaseAssetConnection
    = ReleaseAssetConnection


type ReleaseAssetEdge
    = ReleaseAssetEdge


type ReleaseConnection
    = ReleaseConnection


type ReleaseEdge
    = ReleaseEdge


type RemoveOutsideCollaboratorPayload
    = RemoveOutsideCollaboratorPayload


type RemoveReactionPayload
    = RemoveReactionPayload


type RemoveStarPayload
    = RemoveStarPayload


type RemovedFromProjectEvent
    = RemovedFromProjectEvent


type RenamedTitleEvent
    = RenamedTitleEvent


type ReopenedEvent
    = ReopenedEvent


type Repository
    = Repository


type RepositoryCollaboratorConnection
    = RepositoryCollaboratorConnection


type RepositoryCollaboratorEdge
    = RepositoryCollaboratorEdge


type RepositoryConnection
    = RepositoryConnection


type RepositoryEdge
    = RepositoryEdge


type RepositoryInvitation
    = RepositoryInvitation


type RepositoryInvitationRepository
    = RepositoryInvitationRepository


type RepositoryTopic
    = RepositoryTopic


type RepositoryTopicConnection
    = RepositoryTopicConnection


type RepositoryTopicEdge
    = RepositoryTopicEdge


type RequestReviewsPayload
    = RequestReviewsPayload


type ReviewDismissalAllowance
    = ReviewDismissalAllowance


type ReviewDismissalAllowanceConnection
    = ReviewDismissalAllowanceConnection


type ReviewDismissalAllowanceEdge
    = ReviewDismissalAllowanceEdge


type ReviewDismissedEvent
    = ReviewDismissedEvent


type ReviewRequest
    = ReviewRequest


type ReviewRequestConnection
    = ReviewRequestConnection


type ReviewRequestEdge
    = ReviewRequestEdge


type ReviewRequestRemovedEvent
    = ReviewRequestRemovedEvent


type ReviewRequestedEvent
    = ReviewRequestedEvent


type SearchResultItemConnection
    = SearchResultItemConnection


type SearchResultItemEdge
    = SearchResultItemEdge


type SmimeSignature
    = SmimeSignature


type StargazerConnection
    = StargazerConnection


type StargazerEdge
    = StargazerEdge


type StarredRepositoryConnection
    = StarredRepositoryConnection


type StarredRepositoryEdge
    = StarredRepositoryEdge


type Status
    = Status


type StatusContext
    = StatusContext


type SubmitPullRequestReviewPayload
    = SubmitPullRequestReviewPayload


type SubscribedEvent
    = SubscribedEvent


type SuggestedReviewer
    = SuggestedReviewer


type Tag
    = Tag


type Team
    = Team


type TeamConnection
    = TeamConnection


type TeamEdge
    = TeamEdge


type TeamMemberConnection
    = TeamMemberConnection


type TeamMemberEdge
    = TeamMemberEdge


type TeamRepositoryConnection
    = TeamRepositoryConnection


type TeamRepositoryEdge
    = TeamRepositoryEdge


type TextMatch
    = TextMatch


type TextMatchHighlight
    = TextMatchHighlight


type Topic
    = Topic


type TopicConnection
    = TopicConnection


type TopicEdge
    = TopicEdge


type Tree
    = Tree


type TreeEntry
    = TreeEntry


type UnassignedEvent
    = UnassignedEvent


type UnknownSignature
    = UnknownSignature


type UnlabeledEvent
    = UnlabeledEvent


type UnlockedEvent
    = UnlockedEvent


type UnsubscribedEvent
    = UnsubscribedEvent


type UpdateProjectCardPayload
    = UpdateProjectCardPayload


type UpdateProjectColumnPayload
    = UpdateProjectColumnPayload


type UpdateProjectPayload
    = UpdateProjectPayload


type UpdatePullRequestReviewCommentPayload
    = UpdatePullRequestReviewCommentPayload


type UpdatePullRequestReviewPayload
    = UpdatePullRequestReviewPayload


type UpdateSubscriptionPayload
    = UpdateSubscriptionPayload


type UpdateTopicsPayload
    = UpdateTopicsPayload


type User
    = User


type UserConnection
    = UserConnection


type UserContentEdit
    = UserContentEdit


type UserContentEditEdge
    = UserContentEditEdge


type UserEdge
    = UserEdge
