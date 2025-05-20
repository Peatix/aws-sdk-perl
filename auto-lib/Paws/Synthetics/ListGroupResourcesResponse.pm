
package Paws::Synthetics::ListGroupResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::ListGroupResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates that there is more data available. You can use
this token in a subsequent C<ListGroupResources> operation to retrieve
the next set of results.


=head2 Resources => ArrayRef[Str|Undef]

An array of ARNs. These ARNs are for the canaries that are associated
with the group.


=head2 _request_id => Str


=cut

