package Paws::WellArchitected;
  use Moose;
  sub service { 'wellarchitected' }
  sub signing_name { 'wellarchitected' }
  sub version { '2020-03-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateLenses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::AssociateLenses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::AssociateProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLensShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::CreateLensShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLensVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::CreateLensVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMilestone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::CreateMilestone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::CreateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProfileShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::CreateProfileShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReviewTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::CreateReviewTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTemplateShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::CreateTemplateShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::CreateWorkload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkloadShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::CreateWorkloadShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLens {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DeleteLens', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLensShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DeleteLensShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DeleteProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfileShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DeleteProfileShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReviewTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DeleteReviewTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTemplateShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DeleteTemplateShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DeleteWorkload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkloadShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DeleteWorkloadShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateLenses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DisassociateLenses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::DisassociateProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportLens {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ExportLens', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnswer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetAnswer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConsolidatedReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetConsolidatedReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGlobalSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetGlobalSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLens {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetLens', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLensReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetLensReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLensReviewReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetLensReviewReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLensVersionDifference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetLensVersionDifference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMilestone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetMilestone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfileTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetProfileTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReviewTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetReviewTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReviewTemplateAnswer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetReviewTemplateAnswer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReviewTemplateLensReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetReviewTemplateLensReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::GetWorkload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportLens {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ImportLens', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnswers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListAnswers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCheckDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListCheckDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCheckSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListCheckSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLenses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListLenses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLensReviewImprovements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListLensReviewImprovements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLensReviews {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListLensReviews', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLensShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListLensShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMilestones {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListMilestones', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfileNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListProfileNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfileShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListProfileShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReviewTemplateAnswers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListReviewTemplateAnswers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReviewTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListReviewTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListShareInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListShareInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplateShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListTemplateShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkloads {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListWorkloads', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkloadShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::ListWorkloadShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAnswer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateAnswer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGlobalSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateGlobalSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLensReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateLensReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReviewTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateReviewTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReviewTemplateAnswer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateReviewTemplateAnswer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReviewTemplateLensReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateReviewTemplateLensReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateShareInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateShareInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateWorkload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkloadShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpdateWorkloadShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpgradeLensReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpgradeLensReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpgradeProfileVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpgradeProfileVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpgradeReviewTemplateLensReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WellArchitected::UpgradeReviewTemplateLensReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateLenses AssociateProfiles CreateLensShare CreateLensVersion CreateMilestone CreateProfile CreateProfileShare CreateReviewTemplate CreateTemplateShare CreateWorkload CreateWorkloadShare DeleteLens DeleteLensShare DeleteProfile DeleteProfileShare DeleteReviewTemplate DeleteTemplateShare DeleteWorkload DeleteWorkloadShare DisassociateLenses DisassociateProfiles ExportLens GetAnswer GetConsolidatedReport GetGlobalSettings GetLens GetLensReview GetLensReviewReport GetLensVersionDifference GetMilestone GetProfile GetProfileTemplate GetReviewTemplate GetReviewTemplateAnswer GetReviewTemplateLensReview GetWorkload ImportLens ListAnswers ListCheckDetails ListCheckSummaries ListLenses ListLensReviewImprovements ListLensReviews ListLensShares ListMilestones ListNotifications ListProfileNotifications ListProfiles ListProfileShares ListReviewTemplateAnswers ListReviewTemplates ListShareInvitations ListTagsForResource ListTemplateShares ListWorkloads ListWorkloadShares TagResource UntagResource UpdateAnswer UpdateGlobalSettings UpdateIntegration UpdateLensReview UpdateProfile UpdateReviewTemplate UpdateReviewTemplateAnswer UpdateReviewTemplateLensReview UpdateShareInvitation UpdateWorkload UpdateWorkloadShare UpgradeLensReview UpgradeProfileVersion UpgradeReviewTemplateLensReview / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected - Perl Interface to AWS AWS Well-Architected Tool

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WellArchitected');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Well-Architected Tool

This is the I<Well-Architected Tool API Reference>. The WA Tool API
provides programmatic access to the Well-Architected Tool
(http://aws.amazon.com/well-architected-tool) in the Amazon Web
Services Management Console
(https://console.aws.amazon.com/wellarchitected). For information about
the Well-Architected Tool, see the Well-Architected Tool User Guide
(https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31>


=head1 METHODS

=head2 AssociateLenses

=over

=item LensAliases => ArrayRef[Str|Undef]

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::AssociateLenses>

Returns: nothing

Associate a lens to a workload.

Up to 10 lenses can be associated with a workload in a single API
operation. A maximum of 20 lenses can be associated with a workload.

B<Disclaimer>

By accessing and/or applying custom lenses created by another Amazon
Web Services user or account, you acknowledge that custom lenses
created by other users and shared with you are Third Party Content as
defined in the Amazon Web Services Customer Agreement.


=head2 AssociateProfiles

=over

=item ProfileArns => ArrayRef[Str|Undef]

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::AssociateProfiles>

Returns: nothing

Associate a profile with a workload.


=head2 CreateLensShare

=over

=item ClientRequestToken => Str

=item LensAlias => Str

=item SharedWith => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::CreateLensShare>

Returns: a L<Paws::WellArchitected::CreateLensShareOutput> instance

Create a lens share.

The owner of a lens can share it with other Amazon Web Services
accounts, users, an organization, and organizational units (OUs) in the
same Amazon Web Services Region. Lenses provided by Amazon Web Services
(Amazon Web Services Official Content) cannot be shared.

Shared access to a lens is not removed until the lens invitation is
deleted.

If you share a lens with an organization or OU, all accounts in the
organization or OU are granted access to the lens.

For more information, see Sharing a custom lens
(https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-sharing.html)
in the I<Well-Architected Tool User Guide>.

B<Disclaimer>

By sharing your custom lenses with other Amazon Web Services accounts,
you acknowledge that Amazon Web Services will make your custom lenses
available to those other accounts. Those other accounts may continue to
access and use your shared custom lenses even if you delete the custom
lenses from your own Amazon Web Services account or terminate your
Amazon Web Services account.


=head2 CreateLensVersion

=over

=item ClientRequestToken => Str

=item LensAlias => Str

=item LensVersion => Str

=item [IsMajorVersion => Bool]


=back

Each argument is described in detail in: L<Paws::WellArchitected::CreateLensVersion>

Returns: a L<Paws::WellArchitected::CreateLensVersionOutput> instance

Create a new lens version.

A lens can have up to 100 versions.

Use this operation to publish a new lens version after you have
imported a lens. The C<LensAlias> is used to identify the lens to be
published. The owner of a lens can share the lens with other Amazon Web
Services accounts and users in the same Amazon Web Services Region.
Only the owner of a lens can delete it.


=head2 CreateMilestone

=over

=item ClientRequestToken => Str

=item MilestoneName => Str

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::CreateMilestone>

Returns: a L<Paws::WellArchitected::CreateMilestoneOutput> instance

Create a milestone for an existing workload.


=head2 CreateProfile

=over

=item ClientRequestToken => Str

=item ProfileDescription => Str

=item ProfileName => Str

=item ProfileQuestions => ArrayRef[L<Paws::WellArchitected::ProfileQuestionUpdate>]

=item [Tags => L<Paws::WellArchitected::TagMap>]


=back

Each argument is described in detail in: L<Paws::WellArchitected::CreateProfile>

Returns: a L<Paws::WellArchitected::CreateProfileOutput> instance

Create a profile.


=head2 CreateProfileShare

=over

=item ClientRequestToken => Str

=item ProfileArn => Str

=item SharedWith => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::CreateProfileShare>

Returns: a L<Paws::WellArchitected::CreateProfileShareOutput> instance

Create a profile share.


=head2 CreateReviewTemplate

=over

=item ClientRequestToken => Str

=item Description => Str

=item Lenses => ArrayRef[Str|Undef]

=item TemplateName => Str

=item [Notes => Str]

=item [Tags => L<Paws::WellArchitected::TagMap>]


=back

Each argument is described in detail in: L<Paws::WellArchitected::CreateReviewTemplate>

Returns: a L<Paws::WellArchitected::CreateReviewTemplateOutput> instance

Create a review template.

B<Disclaimer>

Do not include or gather personal identifiable information (PII) of end
users or other identifiable individuals in or via your review
templates. If your review template or those shared with you and used in
your account do include or collect PII you are responsible for:
ensuring that the included PII is processed in accordance with
applicable law, providing adequate privacy notices, and obtaining
necessary consents for processing such data.


=head2 CreateTemplateShare

=over

=item ClientRequestToken => Str

=item SharedWith => Str

=item TemplateArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::CreateTemplateShare>

Returns: a L<Paws::WellArchitected::CreateTemplateShareOutput> instance

Create a review template share.

The owner of a review template can share it with other Amazon Web
Services accounts, users, an organization, and organizational units
(OUs) in the same Amazon Web Services Region.

Shared access to a review template is not removed until the review
template share invitation is deleted.

If you share a review template with an organization or OU, all accounts
in the organization or OU are granted access to the review template.

B<Disclaimer>

By sharing your review template with other Amazon Web Services
accounts, you acknowledge that Amazon Web Services will make your
review template available to those other accounts.


=head2 CreateWorkload

=over

=item ClientRequestToken => Str

=item Description => Str

=item Environment => Str

=item Lenses => ArrayRef[Str|Undef]

=item WorkloadName => Str

=item [AccountIds => ArrayRef[Str|Undef]]

=item [Applications => ArrayRef[Str|Undef]]

=item [ArchitecturalDesign => Str]

=item [AwsRegions => ArrayRef[Str|Undef]]

=item [DiscoveryConfig => L<Paws::WellArchitected::WorkloadDiscoveryConfig>]

=item [Industry => Str]

=item [IndustryType => Str]

=item [JiraConfiguration => L<Paws::WellArchitected::WorkloadJiraConfigurationInput>]

=item [NonAwsRegions => ArrayRef[Str|Undef]]

=item [Notes => Str]

=item [PillarPriorities => ArrayRef[Str|Undef]]

=item [ProfileArns => ArrayRef[Str|Undef]]

=item [ReviewOwner => Str]

=item [ReviewTemplateArns => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::WellArchitected::TagMap>]


=back

Each argument is described in detail in: L<Paws::WellArchitected::CreateWorkload>

Returns: a L<Paws::WellArchitected::CreateWorkloadOutput> instance

Create a new workload.

The owner of a workload can share the workload with other Amazon Web
Services accounts, users, an organization, and organizational units
(OUs) in the same Amazon Web Services Region. Only the owner of a
workload can delete it.

For more information, see Defining a Workload
(https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html)
in the I<Well-Architected Tool User Guide>.

Either C<AwsRegions>, C<NonAwsRegions>, or both must be specified when
creating a workload.

You also must specify C<ReviewOwner>, even though the parameter is
listed as not being required in the following section.

When creating a workload using a review template, you must have the
following IAM permissions:

=over

=item *

C<wellarchitected:GetReviewTemplate>

=item *

C<wellarchitected:GetReviewTemplateAnswer>

=item *

C<wellarchitected:ListReviewTemplateAnswers>

=item *

C<wellarchitected:GetReviewTemplateLensReview>

=back



=head2 CreateWorkloadShare

=over

=item ClientRequestToken => Str

=item PermissionType => Str

=item SharedWith => Str

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::CreateWorkloadShare>

Returns: a L<Paws::WellArchitected::CreateWorkloadShareOutput> instance

Create a workload share.

The owner of a workload can share it with other Amazon Web Services
accounts and users in the same Amazon Web Services Region. Shared
access to a workload is not removed until the workload invitation is
deleted.

If you share a workload with an organization or OU, all accounts in the
organization or OU are granted access to the workload.

For more information, see Sharing a workload
(https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html)
in the I<Well-Architected Tool User Guide>.


=head2 DeleteLens

=over

=item ClientRequestToken => Str

=item LensAlias => Str

=item LensStatus => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DeleteLens>

Returns: nothing

Delete an existing lens.

Only the owner of a lens can delete it. After the lens is deleted,
Amazon Web Services accounts and users that you shared the lens with
can continue to use it, but they will no longer be able to apply it to
new workloads.

B<Disclaimer>

By sharing your custom lenses with other Amazon Web Services accounts,
you acknowledge that Amazon Web Services will make your custom lenses
available to those other accounts. Those other accounts may continue to
access and use your shared custom lenses even if you delete the custom
lenses from your own Amazon Web Services account or terminate your
Amazon Web Services account.


=head2 DeleteLensShare

=over

=item ClientRequestToken => Str

=item LensAlias => Str

=item ShareId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DeleteLensShare>

Returns: nothing

Delete a lens share.

After the lens share is deleted, Amazon Web Services accounts, users,
organizations, and organizational units (OUs) that you shared the lens
with can continue to use it, but they will no longer be able to apply
it to new workloads.

B<Disclaimer>

By sharing your custom lenses with other Amazon Web Services accounts,
you acknowledge that Amazon Web Services will make your custom lenses
available to those other accounts. Those other accounts may continue to
access and use your shared custom lenses even if you delete the custom
lenses from your own Amazon Web Services account or terminate your
Amazon Web Services account.


=head2 DeleteProfile

=over

=item ClientRequestToken => Str

=item ProfileArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DeleteProfile>

Returns: nothing

Delete a profile.

B<Disclaimer>

By sharing your profile with other Amazon Web Services accounts, you
acknowledge that Amazon Web Services will make your profile available
to those other accounts. Those other accounts may continue to access
and use your shared profile even if you delete the profile from your
own Amazon Web Services account or terminate your Amazon Web Services
account.


=head2 DeleteProfileShare

=over

=item ClientRequestToken => Str

=item ProfileArn => Str

=item ShareId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DeleteProfileShare>

Returns: nothing

Delete a profile share.


=head2 DeleteReviewTemplate

=over

=item ClientRequestToken => Str

=item TemplateArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DeleteReviewTemplate>

Returns: nothing

Delete a review template.

Only the owner of a review template can delete it.

After the review template is deleted, Amazon Web Services accounts,
users, organizations, and organizational units (OUs) that you shared
the review template with will no longer be able to apply it to new
workloads.


=head2 DeleteTemplateShare

=over

=item ClientRequestToken => Str

=item ShareId => Str

=item TemplateArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DeleteTemplateShare>

Returns: nothing

Delete a review template share.

After the review template share is deleted, Amazon Web Services
accounts, users, organizations, and organizational units (OUs) that you
shared the review template with will no longer be able to apply it to
new workloads.


=head2 DeleteWorkload

=over

=item ClientRequestToken => Str

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DeleteWorkload>

Returns: nothing

Delete an existing workload.


=head2 DeleteWorkloadShare

=over

=item ClientRequestToken => Str

=item ShareId => Str

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DeleteWorkloadShare>

Returns: nothing

Delete a workload share.


=head2 DisassociateLenses

=over

=item LensAliases => ArrayRef[Str|Undef]

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DisassociateLenses>

Returns: nothing

Disassociate a lens from a workload.

Up to 10 lenses can be disassociated from a workload in a single API
operation.

The Amazon Web Services Well-Architected Framework lens
(C<wellarchitected>) cannot be removed from a workload.


=head2 DisassociateProfiles

=over

=item ProfileArns => ArrayRef[Str|Undef]

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::DisassociateProfiles>

Returns: nothing

Disassociate a profile from a workload.


=head2 ExportLens

=over

=item LensAlias => Str

=item [LensVersion => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ExportLens>

Returns: a L<Paws::WellArchitected::ExportLensOutput> instance

Export an existing lens.

Only the owner of a lens can export it. Lenses provided by Amazon Web
Services (Amazon Web Services Official Content) cannot be exported.

Lenses are defined in JSON. For more information, see JSON format
specification
(https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html)
in the I<Well-Architected Tool User Guide>.

B<Disclaimer>

Do not include or gather personal identifiable information (PII) of end
users or other identifiable individuals in or via your custom lenses.
If your custom lens or those shared with you and used in your account
do include or collect PII you are responsible for: ensuring that the
included PII is processed in accordance with applicable law, providing
adequate privacy notices, and obtaining necessary consents for
processing such data.


=head2 GetAnswer

=over

=item LensAlias => Str

=item QuestionId => Str

=item WorkloadId => Str

=item [MilestoneNumber => Int]


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetAnswer>

Returns: a L<Paws::WellArchitected::GetAnswerOutput> instance

Get the answer to a specific question in a workload review.


=head2 GetConsolidatedReport

=over

=item Format => Str

=item [IncludeSharedResources => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetConsolidatedReport>

Returns: a L<Paws::WellArchitected::GetConsolidatedReportOutput> instance

Get a consolidated report of your workloads.

You can optionally choose to include workloads that have been shared
with you.


=head2 GetGlobalSettings

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetGlobalSettings>

Returns: a L<Paws::WellArchitected::GetGlobalSettingsOutput> instance

Global settings for all workloads.


=head2 GetLens

=over

=item LensAlias => Str

=item [LensVersion => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetLens>

Returns: a L<Paws::WellArchitected::GetLensOutput> instance

Get an existing lens.


=head2 GetLensReview

=over

=item LensAlias => Str

=item WorkloadId => Str

=item [MilestoneNumber => Int]


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetLensReview>

Returns: a L<Paws::WellArchitected::GetLensReviewOutput> instance

Get lens review.


=head2 GetLensReviewReport

=over

=item LensAlias => Str

=item WorkloadId => Str

=item [MilestoneNumber => Int]


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetLensReviewReport>

Returns: a L<Paws::WellArchitected::GetLensReviewReportOutput> instance

Get lens review report.


=head2 GetLensVersionDifference

=over

=item LensAlias => Str

=item [BaseLensVersion => Str]

=item [TargetLensVersion => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetLensVersionDifference>

Returns: a L<Paws::WellArchitected::GetLensVersionDifferenceOutput> instance

Get lens version differences.


=head2 GetMilestone

=over

=item MilestoneNumber => Int

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetMilestone>

Returns: a L<Paws::WellArchitected::GetMilestoneOutput> instance

Get a milestone for an existing workload.


=head2 GetProfile

=over

=item ProfileArn => Str

=item [ProfileVersion => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetProfile>

Returns: a L<Paws::WellArchitected::GetProfileOutput> instance

Get profile information.


=head2 GetProfileTemplate






Each argument is described in detail in: L<Paws::WellArchitected::GetProfileTemplate>

Returns: a L<Paws::WellArchitected::GetProfileTemplateOutput> instance

Get profile template.


=head2 GetReviewTemplate

=over

=item TemplateArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetReviewTemplate>

Returns: a L<Paws::WellArchitected::GetReviewTemplateOutput> instance

Get review template.


=head2 GetReviewTemplateAnswer

=over

=item LensAlias => Str

=item QuestionId => Str

=item TemplateArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetReviewTemplateAnswer>

Returns: a L<Paws::WellArchitected::GetReviewTemplateAnswerOutput> instance

Get review template answer.


=head2 GetReviewTemplateLensReview

=over

=item LensAlias => Str

=item TemplateArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetReviewTemplateLensReview>

Returns: a L<Paws::WellArchitected::GetReviewTemplateLensReviewOutput> instance

Get a lens review associated with a review template.


=head2 GetWorkload

=over

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::GetWorkload>

Returns: a L<Paws::WellArchitected::GetWorkloadOutput> instance

Get an existing workload.


=head2 ImportLens

=over

=item ClientRequestToken => Str

=item JSONString => Str

=item [LensAlias => Str]

=item [Tags => L<Paws::WellArchitected::TagMap>]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ImportLens>

Returns: a L<Paws::WellArchitected::ImportLensOutput> instance

Import a new custom lens or update an existing custom lens.

To update an existing custom lens, specify its ARN as the C<LensAlias>.
If no ARN is specified, a new custom lens is created.

The new or updated lens will have a status of C<DRAFT>. The lens cannot
be applied to workloads or shared with other Amazon Web Services
accounts until it's published with CreateLensVersion.

Lenses are defined in JSON. For more information, see JSON format
specification
(https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html)
in the I<Well-Architected Tool User Guide>.

A custom lens cannot exceed 500 KB in size.

B<Disclaimer>

Do not include or gather personal identifiable information (PII) of end
users or other identifiable individuals in or via your custom lenses.
If your custom lens or those shared with you and used in your account
do include or collect PII you are responsible for: ensuring that the
included PII is processed in accordance with applicable law, providing
adequate privacy notices, and obtaining necessary consents for
processing such data.


=head2 ListAnswers

=over

=item LensAlias => Str

=item WorkloadId => Str

=item [MaxResults => Int]

=item [MilestoneNumber => Int]

=item [NextToken => Str]

=item [PillarId => Str]

=item [QuestionPriority => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListAnswers>

Returns: a L<Paws::WellArchitected::ListAnswersOutput> instance

List of answers for a particular workload and lens.


=head2 ListCheckDetails

=over

=item ChoiceId => Str

=item LensArn => Str

=item PillarId => Str

=item QuestionId => Str

=item WorkloadId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListCheckDetails>

Returns: a L<Paws::WellArchitected::ListCheckDetailsOutput> instance

List of Trusted Advisor check details by account related to the
workload.


=head2 ListCheckSummaries

=over

=item ChoiceId => Str

=item LensArn => Str

=item PillarId => Str

=item QuestionId => Str

=item WorkloadId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListCheckSummaries>

Returns: a L<Paws::WellArchitected::ListCheckSummariesOutput> instance

List of Trusted Advisor checks summarized for all accounts related to
the workload.


=head2 ListLenses

=over

=item [LensName => Str]

=item [LensStatus => Str]

=item [LensType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListLenses>

Returns: a L<Paws::WellArchitected::ListLensesOutput> instance

List the available lenses.


=head2 ListLensReviewImprovements

=over

=item LensAlias => Str

=item WorkloadId => Str

=item [MaxResults => Int]

=item [MilestoneNumber => Int]

=item [NextToken => Str]

=item [PillarId => Str]

=item [QuestionPriority => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListLensReviewImprovements>

Returns: a L<Paws::WellArchitected::ListLensReviewImprovementsOutput> instance

List the improvements of a particular lens review.


=head2 ListLensReviews

=over

=item WorkloadId => Str

=item [MaxResults => Int]

=item [MilestoneNumber => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListLensReviews>

Returns: a L<Paws::WellArchitected::ListLensReviewsOutput> instance

List lens reviews for a particular workload.


=head2 ListLensShares

=over

=item LensAlias => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SharedWithPrefix => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListLensShares>

Returns: a L<Paws::WellArchitected::ListLensSharesOutput> instance

List the lens shares associated with the lens.


=head2 ListMilestones

=over

=item WorkloadId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListMilestones>

Returns: a L<Paws::WellArchitected::ListMilestonesOutput> instance

List all milestones for an existing workload.


=head2 ListNotifications

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceArn => Str]

=item [WorkloadId => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListNotifications>

Returns: a L<Paws::WellArchitected::ListNotificationsOutput> instance

List lens notifications.


=head2 ListProfileNotifications

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkloadId => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListProfileNotifications>

Returns: a L<Paws::WellArchitected::ListProfileNotificationsOutput> instance

List profile notifications.


=head2 ListProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProfileNamePrefix => Str]

=item [ProfileOwnerType => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListProfiles>

Returns: a L<Paws::WellArchitected::ListProfilesOutput> instance

List profiles.


=head2 ListProfileShares

=over

=item ProfileArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SharedWithPrefix => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListProfileShares>

Returns: a L<Paws::WellArchitected::ListProfileSharesOutput> instance

List profile shares.


=head2 ListReviewTemplateAnswers

=over

=item LensAlias => Str

=item TemplateArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PillarId => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListReviewTemplateAnswers>

Returns: a L<Paws::WellArchitected::ListReviewTemplateAnswersOutput> instance

List the answers of a review template.


=head2 ListReviewTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListReviewTemplates>

Returns: a L<Paws::WellArchitected::ListReviewTemplatesOutput> instance

List review templates.


=head2 ListShareInvitations

=over

=item [LensNamePrefix => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProfileNamePrefix => Str]

=item [ShareResourceType => Str]

=item [TemplateNamePrefix => Str]

=item [WorkloadNamePrefix => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListShareInvitations>

Returns: a L<Paws::WellArchitected::ListShareInvitationsOutput> instance

List the share invitations.

C<WorkloadNamePrefix>, C<LensNamePrefix>, C<ProfileNamePrefix>, and
C<TemplateNamePrefix> are mutually exclusive. Use the parameter that
matches your C<ShareResourceType>.


=head2 ListTagsForResource

=over

=item WorkloadArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListTagsForResource>

Returns: a L<Paws::WellArchitected::ListTagsForResourceOutput> instance

List the tags for a resource.

The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a
profile ARN, or review template ARN.


=head2 ListTemplateShares

=over

=item TemplateArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SharedWithPrefix => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListTemplateShares>

Returns: a L<Paws::WellArchitected::ListTemplateSharesOutput> instance

List review template shares.


=head2 ListWorkloads

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkloadNamePrefix => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListWorkloads>

Returns: a L<Paws::WellArchitected::ListWorkloadsOutput> instance

Paginated list of workloads.


=head2 ListWorkloadShares

=over

=item WorkloadId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SharedWithPrefix => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::ListWorkloadShares>

Returns: a L<Paws::WellArchitected::ListWorkloadSharesOutput> instance

List the workload shares associated with the workload.


=head2 TagResource

=over

=item Tags => L<Paws::WellArchitected::TagMap>

=item WorkloadArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::TagResource>

Returns: a L<Paws::WellArchitected::TagResourceOutput> instance

Adds one or more tags to the specified resource.

The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a
profile ARN, or review template ARN.


=head2 UntagResource

=over

=item TagKeys => ArrayRef[Str|Undef]

=item WorkloadArn => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::UntagResource>

Returns: a L<Paws::WellArchitected::UntagResourceOutput> instance

Deletes specified tags from a resource.

The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a
profile ARN, or review template ARN.

To specify multiple tags, use separate B<tagKeys> parameters, for
example:

C<DELETE /tags/WorkloadArn?tagKeys=key1&tagKeys=key2>


=head2 UpdateAnswer

=over

=item LensAlias => Str

=item QuestionId => Str

=item WorkloadId => Str

=item [ChoiceUpdates => L<Paws::WellArchitected::ChoiceUpdates>]

=item [IsApplicable => Bool]

=item [Notes => Str]

=item [Reason => Str]

=item [SelectedChoices => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateAnswer>

Returns: a L<Paws::WellArchitected::UpdateAnswerOutput> instance

Update the answer to a specific question in a workload review.


=head2 UpdateGlobalSettings

=over

=item [DiscoveryIntegrationStatus => Str]

=item [JiraConfiguration => L<Paws::WellArchitected::AccountJiraConfigurationInput>]

=item [OrganizationSharingStatus => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateGlobalSettings>

Returns: nothing

Update whether the Amazon Web Services account is opted into
organization sharing and discovery integration features.


=head2 UpdateIntegration

=over

=item ClientRequestToken => Str

=item IntegratingService => Str

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateIntegration>

Returns: nothing

Update integration features.


=head2 UpdateLensReview

=over

=item LensAlias => Str

=item WorkloadId => Str

=item [JiraConfiguration => L<Paws::WellArchitected::JiraSelectedQuestionConfiguration>]

=item [LensNotes => Str]

=item [PillarNotes => L<Paws::WellArchitected::PillarNotes>]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateLensReview>

Returns: a L<Paws::WellArchitected::UpdateLensReviewOutput> instance

Update lens review for a particular workload.


=head2 UpdateProfile

=over

=item ProfileArn => Str

=item [ProfileDescription => Str]

=item [ProfileQuestions => ArrayRef[L<Paws::WellArchitected::ProfileQuestionUpdate>]]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateProfile>

Returns: a L<Paws::WellArchitected::UpdateProfileOutput> instance

Update a profile.


=head2 UpdateReviewTemplate

=over

=item TemplateArn => Str

=item [Description => Str]

=item [LensesToAssociate => ArrayRef[Str|Undef]]

=item [LensesToDisassociate => ArrayRef[Str|Undef]]

=item [Notes => Str]

=item [TemplateName => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateReviewTemplate>

Returns: a L<Paws::WellArchitected::UpdateReviewTemplateOutput> instance

Update a review template.


=head2 UpdateReviewTemplateAnswer

=over

=item LensAlias => Str

=item QuestionId => Str

=item TemplateArn => Str

=item [ChoiceUpdates => L<Paws::WellArchitected::ChoiceUpdates>]

=item [IsApplicable => Bool]

=item [Notes => Str]

=item [Reason => Str]

=item [SelectedChoices => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateReviewTemplateAnswer>

Returns: a L<Paws::WellArchitected::UpdateReviewTemplateAnswerOutput> instance

Update a review template answer.


=head2 UpdateReviewTemplateLensReview

=over

=item LensAlias => Str

=item TemplateArn => Str

=item [LensNotes => Str]

=item [PillarNotes => L<Paws::WellArchitected::PillarNotes>]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateReviewTemplateLensReview>

Returns: a L<Paws::WellArchitected::UpdateReviewTemplateLensReviewOutput> instance

Update a lens review associated with a review template.


=head2 UpdateShareInvitation

=over

=item ShareInvitationAction => Str

=item ShareInvitationId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateShareInvitation>

Returns: a L<Paws::WellArchitected::UpdateShareInvitationOutput> instance

Update a workload or custom lens share invitation.

This API operation can be called independently of any resource.
Previous documentation implied that a workload ARN must be specified.


=head2 UpdateWorkload

=over

=item WorkloadId => Str

=item [AccountIds => ArrayRef[Str|Undef]]

=item [Applications => ArrayRef[Str|Undef]]

=item [ArchitecturalDesign => Str]

=item [AwsRegions => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [DiscoveryConfig => L<Paws::WellArchitected::WorkloadDiscoveryConfig>]

=item [Environment => Str]

=item [ImprovementStatus => Str]

=item [Industry => Str]

=item [IndustryType => Str]

=item [IsReviewOwnerUpdateAcknowledged => Bool]

=item [JiraConfiguration => L<Paws::WellArchitected::WorkloadJiraConfigurationInput>]

=item [NonAwsRegions => ArrayRef[Str|Undef]]

=item [Notes => Str]

=item [PillarPriorities => ArrayRef[Str|Undef]]

=item [ReviewOwner => Str]

=item [WorkloadName => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateWorkload>

Returns: a L<Paws::WellArchitected::UpdateWorkloadOutput> instance

Update an existing workload.


=head2 UpdateWorkloadShare

=over

=item PermissionType => Str

=item ShareId => Str

=item WorkloadId => Str


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpdateWorkloadShare>

Returns: a L<Paws::WellArchitected::UpdateWorkloadShareOutput> instance

Update a workload share.


=head2 UpgradeLensReview

=over

=item LensAlias => Str

=item MilestoneName => Str

=item WorkloadId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpgradeLensReview>

Returns: nothing

Upgrade lens review for a particular workload.


=head2 UpgradeProfileVersion

=over

=item ProfileArn => Str

=item WorkloadId => Str

=item [ClientRequestToken => Str]

=item [MilestoneName => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpgradeProfileVersion>

Returns: nothing

Upgrade a profile.


=head2 UpgradeReviewTemplateLensReview

=over

=item LensAlias => Str

=item TemplateArn => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::WellArchitected::UpgradeReviewTemplateLensReview>

Returns: nothing

Upgrade the lens review of a review template.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

