
package Paws::Textract::ListAdapterVersionsResponse;
  use Moose;
  has AdapterVersions => (is => 'ro', isa => 'ArrayRef[Paws::Textract::AdapterVersionOverview]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::ListAdapterVersionsResponse

=head1 ATTRIBUTES


=head2 AdapterVersions => ArrayRef[L<Paws::Textract::AdapterVersionOverview>]

Adapter versions that match the filtering criteria specified when
calling ListAdapters.


=head2 NextToken => Str

Identifies the next page of results to return when listing adapter
versions.


=head2 _request_id => Str


=cut

1;