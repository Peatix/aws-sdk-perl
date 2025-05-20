
package Paws::SSM::GetResourcePoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Policies => (is => 'ro', isa => 'ArrayRef[Paws::SSM::GetResourcePoliciesResponseEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetResourcePoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 Policies => ArrayRef[L<Paws::SSM::GetResourcePoliciesResponseEntry>]

An array of the C<Policy> object.


=head2 _request_id => Str


=cut

1;