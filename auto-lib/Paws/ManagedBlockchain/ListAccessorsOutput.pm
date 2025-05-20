
package Paws::ManagedBlockchain::ListAccessorsOutput;
  use Moose;
  has Accessors => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchain::AccessorSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListAccessorsOutput

=head1 ATTRIBUTES


=head2 Accessors => ArrayRef[L<Paws::ManagedBlockchain::AccessorSummary>]

An array of AccessorSummary objects that contain configuration
properties for each accessor.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

