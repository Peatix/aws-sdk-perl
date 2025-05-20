
package Paws::ComputeOptimizer::GetEnrollmentStatusesForOrganizationResponse;
  use Moose;
  has AccountEnrollmentStatuses => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::AccountEnrollmentStatus]', traits => ['NameInRequest'], request_name => 'accountEnrollmentStatuses' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetEnrollmentStatusesForOrganizationResponse

=head1 ATTRIBUTES


=head2 AccountEnrollmentStatuses => ArrayRef[L<Paws::ComputeOptimizer::AccountEnrollmentStatus>]

An array of objects that describe the enrollment statuses of
organization member accounts.


=head2 NextToken => Str

The token to use to advance to the next page of account enrollment
statuses.

This value is null when there are no more pages of account enrollment
statuses to return.


=head2 _request_id => Str


=cut

1;