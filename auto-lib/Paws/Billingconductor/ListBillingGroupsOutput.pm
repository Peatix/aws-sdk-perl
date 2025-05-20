
package Paws::Billingconductor::ListBillingGroupsOutput;
  use Moose;
  has BillingGroups => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::BillingGroupListElement]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListBillingGroupsOutput

=head1 ATTRIBUTES


=head2 BillingGroups => ArrayRef[L<Paws::Billingconductor::BillingGroupListElement>]

A list of C<BillingGroupListElement> retrieved.


=head2 NextToken => Str

The pagination token that's used on subsequent calls to get billing
groups.


=head2 _request_id => Str


=cut

