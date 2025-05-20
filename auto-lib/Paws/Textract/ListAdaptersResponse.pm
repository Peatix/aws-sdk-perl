
package Paws::Textract::ListAdaptersResponse;
  use Moose;
  has Adapters => (is => 'ro', isa => 'ArrayRef[Paws::Textract::AdapterOverview]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::ListAdaptersResponse

=head1 ATTRIBUTES


=head2 Adapters => ArrayRef[L<Paws::Textract::AdapterOverview>]

A list of adapters that matches the filtering criteria specified when
calling ListAdapters.


=head2 NextToken => Str

Identifies the next page of results to return when listing adapters.


=head2 _request_id => Str


=cut

1;