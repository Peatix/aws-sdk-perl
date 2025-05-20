
package Paws::Glue::ListConnectionTypesResponse;
  use Moose;
  has ConnectionTypes => (is => 'ro', isa => 'ArrayRef[Paws::Glue::ConnectionTypeBrief]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListConnectionTypesResponse

=head1 ATTRIBUTES


=head2 ConnectionTypes => ArrayRef[L<Paws::Glue::ConnectionTypeBrief>]

A list of C<ConnectionTypeBrief> objects containing brief information
about the supported connection types.


=head2 NextToken => Str

A continuation token, if the current list segment is not the last.


=head2 _request_id => Str


=cut

1;