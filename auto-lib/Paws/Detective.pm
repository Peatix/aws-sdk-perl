package Paws::Detective;
  use Moose;
  sub service { 'api.detective' }
  sub signing_name { 'detective' }
  sub version { '2018-10-26' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::AcceptInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetGraphMemberDatasources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::BatchGetGraphMemberDatasources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetMembershipDatasources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::BatchGetMembershipDatasources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::CreateGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::CreateMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::DeleteGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::DeleteMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::DescribeOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::DisableOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::DisassociateMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::EnableOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvestigation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::GetInvestigation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::GetMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasourcePackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::ListDatasourcePackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGraphs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::ListGraphs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIndicators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::ListIndicators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvestigations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::ListInvestigations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::ListInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::ListMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizationAdminAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::ListOrganizationAdminAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::RejectInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartInvestigation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::StartInvestigation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMonitoringMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::StartMonitoringMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDatasourcePackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::UpdateDatasourcePackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInvestigationState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::UpdateInvestigationState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Detective::UpdateOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AcceptInvitation BatchGetGraphMemberDatasources BatchGetMembershipDatasources CreateGraph CreateMembers DeleteGraph DeleteMembers DescribeOrganizationConfiguration DisableOrganizationAdminAccount DisassociateMembership EnableOrganizationAdminAccount GetInvestigation GetMembers ListDatasourcePackages ListGraphs ListIndicators ListInvestigations ListInvitations ListMembers ListOrganizationAdminAccounts ListTagsForResource RejectInvitation StartInvestigation StartMonitoringMember TagResource UntagResource UpdateDatasourcePackages UpdateInvestigationState UpdateOrganizationConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective - Perl Interface to AWS Amazon Detective

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Detective');
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

Detective uses machine learning and purpose-built visualizations to
help you to analyze and investigate security issues across your Amazon
Web Services (Amazon Web Services) workloads. Detective automatically
extracts time-based events such as login attempts, API calls, and
network traffic from CloudTrail and Amazon Virtual Private Cloud
(Amazon VPC) flow logs. It also extracts findings detected by Amazon
GuardDuty.

The Detective API primarily supports the creation and management of
behavior graphs. A behavior graph contains the extracted data from a
set of member accounts, and is created and managed by an administrator
account.

To add a member account to the behavior graph, the administrator
account sends an invitation to the account. When the account accepts
the invitation, it becomes a member account in the behavior graph.

Detective is also integrated with Organizations. The organization
management account designates the Detective administrator account for
the organization. That account becomes the administrator account for
the organization behavior graph. The Detective administrator account is
also the delegated administrator account for Detective in
Organizations.

The Detective administrator account can enable any organization account
as a member account in the organization behavior graph. The
organization accounts do not receive invitations. The Detective
administrator account can also invite other accounts to the
organization behavior graph.

Every behavior graph is specific to a Region. You can only use the API
to manage behavior graphs that belong to the Region that is associated
with the currently selected endpoint.

The administrator account for a behavior graph can use the Detective
API to do the following:

=over

=item *

Enable and disable Detective. Enabling Detective creates a new behavior
graph.

=item *

View the list of member accounts in a behavior graph.

=item *

Add member accounts to a behavior graph.

=item *

Remove member accounts from a behavior graph.

=item *

Apply tags to a behavior graph.

=back

The organization management account can use the Detective API to select
the delegated administrator for Detective.

The Detective administrator account for an organization can use the
Detective API to do the following:

=over

=item *

Perform all of the functions of an administrator account.

=item *

Determine whether to automatically enable new organization accounts as
member accounts in the organization behavior graph.

=back

An invited member account can use the Detective API to do the
following:

=over

=item *

View the list of behavior graphs that they are invited to.

=item *

Accept an invitation to contribute to a behavior graph.

=item *

Decline an invitation to contribute to a behavior graph.

=item *

Remove their account from a behavior graph.

=back

All API actions are logged as CloudTrail events. See Logging Detective
API Calls with CloudTrail
(https://docs.aws.amazon.com/detective/latest/userguide/logging-using-cloudtrail.html).

We replaced the term "master account" with the term "administrator
account". An administrator account is used to centrally manage multiple
accounts. In the case of Detective, the administrator account manages
the accounts in their behavior graph.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.detective-2018-10-26>


=head1 METHODS

=head2 AcceptInvitation

=over

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::AcceptInvitation>

Returns: nothing

Accepts an invitation for the member account to contribute data to a
behavior graph. This operation can only be called by an invited member
account.

The request provides the ARN of behavior graph.

The member account status in the graph must be C<INVITED>.


=head2 BatchGetGraphMemberDatasources

=over

=item AccountIds => ArrayRef[Str|Undef]

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::BatchGetGraphMemberDatasources>

Returns: a L<Paws::Detective::BatchGetGraphMemberDatasourcesResponse> instance

Gets data source package information for the behavior graph.


=head2 BatchGetMembershipDatasources

=over

=item GraphArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Detective::BatchGetMembershipDatasources>

Returns: a L<Paws::Detective::BatchGetMembershipDatasourcesResponse> instance

Gets information on the data source package history for an account.


=head2 CreateGraph

=over

=item [Tags => L<Paws::Detective::TagMap>]


=back

Each argument is described in detail in: L<Paws::Detective::CreateGraph>

Returns: a L<Paws::Detective::CreateGraphResponse> instance

Creates a new behavior graph for the calling account, and sets that
account as the administrator account. This operation is called by the
account that is enabling Detective.

The operation also enables Detective for the calling account in the
currently selected Region. It returns the ARN of the new behavior
graph.

C<CreateGraph> triggers a process to create the corresponding data
tables for the new behavior graph.

An account can only be the administrator account for one behavior graph
within a Region. If the same account calls C<CreateGraph> with the same
administrator account, it always returns the same behavior graph ARN.
It does not create a new behavior graph.


=head2 CreateMembers

=over

=item Accounts => ArrayRef[L<Paws::Detective::Account>]

=item GraphArn => Str

=item [DisableEmailNotification => Bool]

=item [Message => Str]


=back

Each argument is described in detail in: L<Paws::Detective::CreateMembers>

Returns: a L<Paws::Detective::CreateMembersResponse> instance

C<CreateMembers> is used to send invitations to accounts. For the
organization behavior graph, the Detective administrator account uses
C<CreateMembers> to enable organization accounts as member accounts.

For invited accounts, C<CreateMembers> sends a request to invite the
specified Amazon Web Services accounts to be member accounts in the
behavior graph. This operation can only be called by the administrator
account for a behavior graph.

C<CreateMembers> verifies the accounts and then invites the verified
accounts. The administrator can optionally specify to not send
invitation emails to the member accounts. This would be used when the
administrator manages their member accounts centrally.

For organization accounts in the organization behavior graph,
C<CreateMembers> attempts to enable the accounts. The organization
accounts do not receive invitations.

The request provides the behavior graph ARN and the list of accounts to
invite or to enable.

The response separates the requested accounts into two lists:

=over

=item *

The accounts that C<CreateMembers> was able to process. For invited
accounts, includes member accounts that are being verified, that have
passed verification and are to be invited, and that have failed
verification. For organization accounts in the organization behavior
graph, includes accounts that can be enabled and that cannot be
enabled.

=item *

The accounts that C<CreateMembers> was unable to process. This list
includes accounts that were already invited to be member accounts in
the behavior graph.

=back



=head2 DeleteGraph

=over

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::DeleteGraph>

Returns: nothing

Disables the specified behavior graph and queues it to be deleted. This
operation removes the behavior graph from each member account's list of
behavior graphs.

C<DeleteGraph> can only be called by the administrator account for a
behavior graph.


=head2 DeleteMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::DeleteMembers>

Returns: a L<Paws::Detective::DeleteMembersResponse> instance

Removes the specified member accounts from the behavior graph. The
removed accounts no longer contribute data to the behavior graph. This
operation can only be called by the administrator account for the
behavior graph.

For invited accounts, the removed accounts are deleted from the list of
accounts in the behavior graph. To restore the account, the
administrator account must send another invitation.

For organization accounts in the organization behavior graph, the
Detective administrator account can always enable the organization
account again. Organization accounts that are not enabled as member
accounts are not included in the C<ListMembers> results for the
organization behavior graph.

An administrator account cannot use C<DeleteMembers> to remove their
own account from the behavior graph. To disable a behavior graph, the
administrator account uses the C<DeleteGraph> API method.


=head2 DescribeOrganizationConfiguration

=over

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::DescribeOrganizationConfiguration>

Returns: a L<Paws::Detective::DescribeOrganizationConfigurationResponse> instance

Returns information about the configuration for the organization
behavior graph. Currently indicates whether to automatically enable new
organization accounts as member accounts.

Can only be called by the Detective administrator account for the
organization.


=head2 DisableOrganizationAdminAccount

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Detective::DisableOrganizationAdminAccount>

Returns: nothing

Removes the Detective administrator account in the current Region.
Deletes the organization behavior graph.

Can only be called by the organization management account.

Removing the Detective administrator account does not affect the
delegated administrator account for Detective in Organizations.

To remove the delegated administrator account in Organizations, use the
Organizations API. Removing the delegated administrator account also
removes the Detective administrator account in all Regions, except for
Regions where the Detective administrator account is the organization
management account.


=head2 DisassociateMembership

=over

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::DisassociateMembership>

Returns: nothing

Removes the member account from the specified behavior graph. This
operation can only be called by an invited member account that has the
C<ENABLED> status.

C<DisassociateMembership> cannot be called by an organization account
in the organization behavior graph. For the organization behavior
graph, the Detective administrator account determines which
organization accounts to enable or disable as member accounts.


=head2 EnableOrganizationAdminAccount

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Detective::EnableOrganizationAdminAccount>

Returns: nothing

Designates the Detective administrator account for the organization in
the current Region.

If the account does not have Detective enabled, then enables Detective
for that account and creates a new behavior graph.

Can only be called by the organization management account.

If the organization has a delegated administrator account in
Organizations, then the Detective administrator account must be either
the delegated administrator account or the organization management
account.

If the organization does not have a delegated administrator account in
Organizations, then you can choose any account in the organization. If
you choose an account other than the organization management account,
Detective calls Organizations to make that account the delegated
administrator account for Detective. The organization management
account cannot be the delegated administrator account.


=head2 GetInvestigation

=over

=item GraphArn => Str

=item InvestigationId => Str


=back

Each argument is described in detail in: L<Paws::Detective::GetInvestigation>

Returns: a L<Paws::Detective::GetInvestigationResponse> instance

Detective investigations lets you investigate IAM users and IAM roles
using indicators of compromise. An indicator of compromise (IOC) is an
artifact observed in or on a network, system, or environment that can
(with a high level of confidence) identify malicious activity or a
security incident. C<GetInvestigation> returns the investigation
results of an investigation for a behavior graph.


=head2 GetMembers

=over

=item AccountIds => ArrayRef[Str|Undef]

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::GetMembers>

Returns: a L<Paws::Detective::GetMembersResponse> instance

Returns the membership details for specified member accounts for a
behavior graph.


=head2 ListDatasourcePackages

=over

=item GraphArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Detective::ListDatasourcePackages>

Returns: a L<Paws::Detective::ListDatasourcePackagesResponse> instance

Lists data source packages in the behavior graph.


=head2 ListGraphs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Detective::ListGraphs>

Returns: a L<Paws::Detective::ListGraphsResponse> instance

Returns the list of behavior graphs that the calling account is an
administrator account of. This operation can only be called by an
administrator account.

Because an account can currently only be the administrator of one
behavior graph within a Region, the results always contain a single
behavior graph.


=head2 ListIndicators

=over

=item GraphArn => Str

=item InvestigationId => Str

=item [IndicatorType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Detective::ListIndicators>

Returns: a L<Paws::Detective::ListIndicatorsResponse> instance

Gets the indicators from an investigation. You can use the information
from the indicators to determine if an IAM user and/or IAM role is
involved in an unusual activity that could indicate malicious behavior
and its impact.


=head2 ListInvestigations

=over

=item GraphArn => Str

=item [FilterCriteria => L<Paws::Detective::FilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => L<Paws::Detective::SortCriteria>]


=back

Each argument is described in detail in: L<Paws::Detective::ListInvestigations>

Returns: a L<Paws::Detective::ListInvestigationsResponse> instance

Detective investigations lets you investigate IAM users and IAM roles
using indicators of compromise. An indicator of compromise (IOC) is an
artifact observed in or on a network, system, or environment that can
(with a high level of confidence) identify malicious activity or a
security incident. C<ListInvestigations> lists all active Detective
investigations.


=head2 ListInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Detective::ListInvitations>

Returns: a L<Paws::Detective::ListInvitationsResponse> instance

Retrieves the list of open and accepted behavior graph invitations for
the member account. This operation can only be called by an invited
member account.

Open invitations are invitations that the member account has not
responded to.

The results do not include behavior graphs for which the member account
declined the invitation. The results also do not include behavior
graphs that the member account resigned from or was removed from.


=head2 ListMembers

=over

=item GraphArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Detective::ListMembers>

Returns: a L<Paws::Detective::ListMembersResponse> instance

Retrieves the list of member accounts for a behavior graph.

For invited accounts, the results do not include member accounts that
were removed from the behavior graph.

For the organization behavior graph, the results do not include
organization accounts that the Detective administrator account has not
enabled as member accounts.


=head2 ListOrganizationAdminAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Detective::ListOrganizationAdminAccounts>

Returns: a L<Paws::Detective::ListOrganizationAdminAccountsResponse> instance

Returns information about the Detective administrator account for an
organization. Can only be called by the organization management
account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::ListTagsForResource>

Returns: a L<Paws::Detective::ListTagsForResourceResponse> instance

Returns the tag values that are assigned to a behavior graph.


=head2 RejectInvitation

=over

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::RejectInvitation>

Returns: nothing

Rejects an invitation to contribute the account data to a behavior
graph. This operation must be called by an invited member account that
has the C<INVITED> status.

C<RejectInvitation> cannot be called by an organization account in the
organization behavior graph. In the organization behavior graph,
organization accounts do not receive an invitation.


=head2 StartInvestigation

=over

=item EntityArn => Str

=item GraphArn => Str

=item ScopeEndTime => Str

=item ScopeStartTime => Str


=back

Each argument is described in detail in: L<Paws::Detective::StartInvestigation>

Returns: a L<Paws::Detective::StartInvestigationResponse> instance

Detective investigations lets you investigate IAM users and IAM roles
using indicators of compromise. An indicator of compromise (IOC) is an
artifact observed in or on a network, system, or environment that can
(with a high level of confidence) identify malicious activity or a
security incident. C<StartInvestigation> initiates an investigation on
an entity in a behavior graph.


=head2 StartMonitoringMember

=over

=item AccountId => Str

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::StartMonitoringMember>

Returns: nothing

Sends a request to enable data ingest for a member account that has a
status of C<ACCEPTED_BUT_DISABLED>.

For valid member accounts, the status is updated as follows.

=over

=item *

If Detective enabled the member account, then the new status is
C<ENABLED>.

=item *

If Detective cannot enable the member account, the status remains
C<ACCEPTED_BUT_DISABLED>.

=back



=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Detective::TagMap>


=back

Each argument is described in detail in: L<Paws::Detective::TagResource>

Returns: a L<Paws::Detective::TagResourceResponse> instance

Applies tag values to a behavior graph.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Detective::UntagResource>

Returns: a L<Paws::Detective::UntagResourceResponse> instance

Removes tags from a behavior graph.


=head2 UpdateDatasourcePackages

=over

=item DatasourcePackages => ArrayRef[Str|Undef]

=item GraphArn => Str


=back

Each argument is described in detail in: L<Paws::Detective::UpdateDatasourcePackages>

Returns: nothing

Starts a data source package for the Detective behavior graph.


=head2 UpdateInvestigationState

=over

=item GraphArn => Str

=item InvestigationId => Str

=item State => Str


=back

Each argument is described in detail in: L<Paws::Detective::UpdateInvestigationState>

Returns: nothing

Updates the state of an investigation.


=head2 UpdateOrganizationConfiguration

=over

=item GraphArn => Str

=item [AutoEnable => Bool]


=back

Each argument is described in detail in: L<Paws::Detective::UpdateOrganizationConfiguration>

Returns: nothing

Updates the configuration for the Organizations integration in the
current Region. Can only be called by the Detective administrator
account for the organization.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

