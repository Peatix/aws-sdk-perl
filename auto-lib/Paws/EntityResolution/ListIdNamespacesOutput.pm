
package Paws::EntityResolution::ListIdNamespacesOutput;
  use Moose;
  has IdNamespaceSummaries => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdNamespaceSummary]', traits => ['NameInRequest'], request_name => 'idNamespaceSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::ListIdNamespacesOutput

=head1 ATTRIBUTES


=head2 IdNamespaceSummaries => ArrayRef[L<Paws::EntityResolution::IdNamespaceSummary>]

A list of C<IdNamespaceSummaries> objects.


=head2 NextToken => Str

The pagination token from the previous API call.


=head2 _request_id => Str


=cut

