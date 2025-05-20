
package Paws::RAM::ListResourceTypesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Paws::RAM::ServiceNameAndResourceType]', traits => ['NameInRequest'], request_name => 'resourceTypes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListResourceTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that more output is available than is
included in the current response. Use this value in the C<NextToken>
request parameter in a subsequent call to the operation to get the next
part of the output. You should repeat this until the C<NextToken>
response element comes back as C<null>. This indicates that this is the
last page of results.


=head2 ResourceTypes => ArrayRef[L<Paws::RAM::ServiceNameAndResourceType>]

An array of objects that contain information about the resource types
that can be shared using RAM.


=head2 _request_id => Str


=cut

