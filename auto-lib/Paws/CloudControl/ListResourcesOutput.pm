
package Paws::CloudControl::ListResourcesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::CloudControl::ResourceDescription]');
  has TypeName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::ListResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all of the remaining results,
C<NextToken> is set to a token. To retrieve the next set of results,
call C<ListResources> again and assign that token to the request
object's C<NextToken> parameter. If the request returns all results,
C<NextToken> is set to null.


=head2 ResourceDescriptions => ArrayRef[L<Paws::CloudControl::ResourceDescription>]

Information about the specified resources, including primary identifier
and resource model.


=head2 TypeName => Str

The name of the resource type.


=head2 _request_id => Str


=cut

1;