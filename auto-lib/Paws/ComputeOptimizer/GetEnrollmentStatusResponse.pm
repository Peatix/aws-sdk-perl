
package Paws::ComputeOptimizer::GetEnrollmentStatusResponse;
  use Moose;
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedTimestamp' );
  has MemberAccountsEnrolled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'memberAccountsEnrolled' );
  has NumberOfMemberAccountsOptedIn => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfMemberAccountsOptedIn' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetEnrollmentStatusResponse

=head1 ATTRIBUTES


=head2 LastUpdatedTimestamp => Str

The Unix epoch timestamp, in seconds, of when the account enrollment
status was last updated.


=head2 MemberAccountsEnrolled => Bool

Confirms the enrollment status of member accounts of the organization,
if the account is a management account of an organization.


=head2 NumberOfMemberAccountsOptedIn => Int

The count of organization member accounts that are opted in to the
service, if your account is an organization management account.


=head2 Status => Str

The enrollment status of the account.

Valid values are: C<"Active">, C<"Inactive">, C<"Pending">, C<"Failed">
=head2 StatusReason => Str

The reason for the enrollment status of the account.

For example, an account might show a status of C<Pending> because
member accounts of an organization require more time to be enrolled in
the service.


=head2 _request_id => Str


=cut

1;