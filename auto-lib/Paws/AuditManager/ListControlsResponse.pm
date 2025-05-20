
package Paws::AuditManager::ListControlsResponse;
  use Moose;
  has ControlMetadataList => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::ControlMetadata]', traits => ['NameInRequest'], request_name => 'controlMetadataList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListControlsResponse

=head1 ATTRIBUTES


=head2 ControlMetadataList => ArrayRef[L<Paws::AuditManager::ControlMetadata>]

A list of metadata that the C<ListControls> API returns for each
control.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

