
package Paws::SecurityIR::GetCaseResponse;
  use Moose;
  has ActualIncidentStartDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actualIncidentStartDate');
  has CaseArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseArn');
  has CaseAttachments => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::CaseAttachmentAttributes]', traits => ['NameInRequest'], request_name => 'caseAttachments');
  has CaseStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseStatus');
  has ClosedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'closedDate');
  has ClosureCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'closureCode');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EngagementType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engagementType');
  has ImpactedAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'impactedAccounts');
  has ImpactedAwsRegions => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::ImpactedAwsRegion]', traits => ['NameInRequest'], request_name => 'impactedAwsRegions');
  has ImpactedServices => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'impactedServices');
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate');
  has PendingAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pendingAction');
  has ReportedIncidentStartDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportedIncidentStartDate');
  has ResolverType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resolverType');
  has ThreatActorIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::ThreatActorIp]', traits => ['NameInRequest'], request_name => 'threatActorIpAddresses');
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title');
  has Watchers => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::Watcher]', traits => ['NameInRequest'], request_name => 'watchers');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::GetCaseResponse

=head1 ATTRIBUTES


=head2 ActualIncidentStartDate => Str

Response element for GetCase that provides the actual incident start
date as identified by data analysis during the investigation.


=head2 CaseArn => Str

Response element for GetCase that provides the case ARN


=head2 CaseAttachments => ArrayRef[L<Paws::SecurityIR::CaseAttachmentAttributes>]

Response element for GetCase that provides a list of current case
attachments.


=head2 CaseStatus => Str

Response element for GetCase that provides the case status. Options for
statuses include C<Submitted | Detection and Analysis | Eradication,
Containment and Recovery | Post-Incident Activities | Closed>

Valid values are: C<"Submitted">, C<"Acknowledged">, C<"Detection and Analysis">, C<"Containment, Eradication and Recovery">, C<"Post-incident Activities">, C<"Ready to Close">, C<"Closed">
=head2 ClosedDate => Str

Response element for GetCase that provides the date a specified case
was closed.


=head2 ClosureCode => Str

Response element for GetCase that provides the summary code for why a
case was closed.

Valid values are: C<"Investigation Completed">, C<"Not Resolved">, C<"False Positive">, C<"Duplicate">
=head2 CreatedDate => Str

Response element for GetCase that provides the date the case was
created.


=head2 Description => Str

Response element for GetCase that provides contents of the case
description.


=head2 EngagementType => Str

Response element for GetCase that provides the engagement type. Options
for engagement type include C<Active Security Event | Investigations>

Valid values are: C<"Security Incident">, C<"Investigation">
=head2 ImpactedAccounts => ArrayRef[Str|Undef]

Response element for GetCase that provides a list of impacted accounts.


=head2 ImpactedAwsRegions => ArrayRef[L<Paws::SecurityIR::ImpactedAwsRegion>]

Response element for GetCase that provides the impacted regions.


=head2 ImpactedServices => ArrayRef[Str|Undef]

Response element for GetCase that provides a list of impacted services.


=head2 LastUpdatedDate => Str

Response element for GetCase that provides the date a case was last
modified.


=head2 PendingAction => Str

Response element for GetCase that provides identifies the case is
waiting on customer input.

Valid values are: C<"Customer">, C<"None">
=head2 ReportedIncidentStartDate => Str

Response element for GetCase that provides the customer provided
incident start date.


=head2 ResolverType => Str

Response element for GetCase that provides the current resolver types.
Options include C< self-supported | AWS-supported>.

Valid values are: C<"AWS">, C<"Self">
=head2 ThreatActorIpAddresses => ArrayRef[L<Paws::SecurityIR::ThreatActorIp>]

Response element for GetCase that provides a list of suspicious IP
addresses associated with unauthorized activity.


=head2 Title => Str

Response element for GetCase that provides the case title.


=head2 Watchers => ArrayRef[L<Paws::SecurityIR::Watcher>]

Response element for GetCase that provides a list of Watchers added to
the case.


=head2 _request_id => Str


=cut

