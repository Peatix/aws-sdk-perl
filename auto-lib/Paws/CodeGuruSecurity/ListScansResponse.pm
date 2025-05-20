
package Paws::CodeGuruSecurity::ListScansResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruSecurity::ScanSummary]', traits => ['NameInRequest'], request_name => 'summaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::ListScansResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token. You can use this in future calls to C<ListScans> to
continue listing results after the current page.


=head2 Summaries => ArrayRef[L<Paws::CodeGuruSecurity::ScanSummary>]

A list of C<ScanSummary> objects with information about all scans in an
account.


=head2 _request_id => Str


=cut

