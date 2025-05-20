
package Paws::ResourceExplorer2::ListManagedViewsOutput;
  use Moose;
  has ManagedViews => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::ListManagedViewsOutput

=head1 ATTRIBUTES


=head2 ManagedViews => ArrayRef[Str|Undef]

The list of managed views available in the Amazon Web Services Region
in which you called this operation.


=head2 NextToken => Str

If present, indicates that more output is available than is included in
the current response. Use this value in the C<NextToken> request
parameter in a subsequent call to the operation to get the next part of
the output. You should repeat this until the C<NextToken> response
element comes back as C<null>. The pagination tokens expire after 24
hours.


=head2 _request_id => Str


=cut

