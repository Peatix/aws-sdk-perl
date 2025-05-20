
package Paws::CostOptimizationHub::ListEnrollmentStatusesResponse;
  use Moose;
  has IncludeMemberAccounts => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeMemberAccounts' );
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CostOptimizationHub::AccountEnrollmentStatus]', traits => ['NameInRequest'], request_name => 'items' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::ListEnrollmentStatusesResponse

=head1 ATTRIBUTES


=head2 IncludeMemberAccounts => Bool

The enrollment status of all member accounts in the organization if the
account is the management account or delegated administrator.


=head2 Items => ArrayRef[L<Paws::CostOptimizationHub::AccountEnrollmentStatus>]

The enrollment status of a specific account ID, including creation and
last updated timestamps.


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

1;