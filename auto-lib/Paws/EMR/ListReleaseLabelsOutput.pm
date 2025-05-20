
package Paws::EMR::ListReleaseLabelsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReleaseLabels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListReleaseLabelsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Used to paginate the next page of results if specified in the next
C<ListReleaseLabels> request.


=head2 ReleaseLabels => ArrayRef[Str|Undef]

The returned release labels.


=head2 _request_id => Str


=cut

1;