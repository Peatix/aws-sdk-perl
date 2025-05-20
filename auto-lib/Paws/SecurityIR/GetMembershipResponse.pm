
package Paws::SecurityIR::GetMembershipResponse;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountId');
  has CustomerType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerType');
  has IncidentResponseTeam => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::IncidentResponder]', traits => ['NameInRequest'], request_name => 'incidentResponseTeam');
  has MembershipActivationTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipActivationTimestamp');
  has MembershipArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipArn');
  has MembershipDeactivationTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipDeactivationTimestamp');
  has MembershipId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipId', required => 1);
  has MembershipName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipName');
  has MembershipStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipStatus');
  has NumberOfAccountsCovered => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfAccountsCovered');
  has OptInFeatures => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::OptInFeature]', traits => ['NameInRequest'], request_name => 'optInFeatures');
  has Region => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::GetMembershipResponse

=head1 ATTRIBUTES


=head2 AccountId => Str

Response element for GetMembership that provides the configured account
for managing the membership.


=head2 CustomerType => Str

Response element for GetMembership that provides the configured
membership type. Options include C< Standalone | Organizations>.

Valid values are: C<"Standalone">, C<"Organization">
=head2 IncidentResponseTeam => ArrayRef[L<Paws::SecurityIR::IncidentResponder>]

Response element for GetMembership that provides the configured
membership incident response team members.


=head2 MembershipActivationTimestamp => Str

Response element for GetMembership that provides the configured
membership activation timestamp.


=head2 MembershipArn => Str

Response element for GetMembership that provides the membership ARN.


=head2 MembershipDeactivationTimestamp => Str

Response element for GetMembership that provides the configured
membership name deactivation timestamp.


=head2 B<REQUIRED> MembershipId => Str

Response element for GetMembership that provides the queried membership
ID.


=head2 MembershipName => Str

Response element for GetMembership that provides the configured
membership name.


=head2 MembershipStatus => Str

Response element for GetMembership that provides the current membership
status.

Valid values are: C<"Active">, C<"Cancelled">, C<"Terminated">
=head2 NumberOfAccountsCovered => Int

Response element for GetMembership that provides the number of accounts
in the membership.


=head2 OptInFeatures => ArrayRef[L<Paws::SecurityIR::OptInFeature>]

Response element for GetMembership that provides the if opt-in features
have been enabled.


=head2 Region => Str

Response element for GetMembership that provides the configured region
for managing the membership.

Valid values are: C<"af-south-1">, C<"ap-east-1">, C<"ap-northeast-1">, C<"ap-northeast-2">, C<"ap-northeast-3">, C<"ap-south-1">, C<"ap-south-2">, C<"ap-southeast-1">, C<"ap-southeast-2">, C<"ap-southeast-3">, C<"ap-southeast-4">, C<"ap-southeast-5">, C<"ca-central-1">, C<"ca-west-1">, C<"cn-north-1">, C<"cn-northwest-1">, C<"eu-central-1">, C<"eu-central-2">, C<"eu-north-1">, C<"eu-south-1">, C<"eu-south-2">, C<"eu-west-1">, C<"eu-west-2">, C<"eu-west-3">, C<"il-central-1">, C<"me-central-1">, C<"me-south-1">, C<"sa-east-1">, C<"us-east-1">, C<"us-east-2">, C<"us-west-1">, C<"us-west-2">
=head2 _request_id => Str


=cut

