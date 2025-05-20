
package Paws::CodeCatalyst::ListSourceRepositoriesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::ListSourceRepositoriesItem]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::ListSourceRepositoriesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CodeCatalyst::ListSourceRepositoriesItem>]

Information about the source repositories.


=head2 NextToken => Str

A token returned from a call to this API to indicate the next batch of
results to return, if any.


=head2 _request_id => Str


=cut

