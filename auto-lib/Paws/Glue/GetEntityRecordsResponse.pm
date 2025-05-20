
package Paws::Glue::GetEntityRecordsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Record]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetEntityRecordsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, present if the current segment is not the last.


=head2 Records => ArrayRef[L<Paws::Glue::Record>]

A list of the requested objects.


=head2 _request_id => Str


=cut

1;