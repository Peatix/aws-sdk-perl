
package Paws::Omics::ListReadSetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReadSets => (is => 'ro', isa => 'ArrayRef[Paws::Omics::ReadSetListItem]', traits => ['NameInRequest'], request_name => 'readSets', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListReadSetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 B<REQUIRED> ReadSets => ArrayRef[L<Paws::Omics::ReadSetListItem>]

A list of read sets.


=head2 _request_id => Str


=cut

