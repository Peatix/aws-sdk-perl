
package Paws::RAM::GetResourceSharesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceShares => (is => 'ro', isa => 'ArrayRef[Paws::RAM::ResourceShare]', traits => ['NameInRequest'], request_name => 'resourceShares');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetResourceSharesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that more output is available than is
included in the current response. Use this value in the C<NextToken>
request parameter in a subsequent call to the operation to get the next
part of the output. You should repeat this until the C<NextToken>
response element comes back as C<null>. This indicates that this is the
last page of results.


=head2 ResourceShares => ArrayRef[L<Paws::RAM::ResourceShare>]

An array of objects that contain the information about the resource
shares.


=head2 _request_id => Str


=cut

