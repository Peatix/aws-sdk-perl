
package Paws::Tnb::ListSolNetworkInstancesOutput;
  use Moose;
  has NetworkInstances => (is => 'ro', isa => 'ArrayRef[Paws::Tnb::ListSolNetworkInstanceInfo]', traits => ['NameInRequest'], request_name => 'networkInstances');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::ListSolNetworkInstancesOutput

=head1 ATTRIBUTES


=head2 NetworkInstances => ArrayRef[L<Paws::Tnb::ListSolNetworkInstanceInfo>]

Lists network instances.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

