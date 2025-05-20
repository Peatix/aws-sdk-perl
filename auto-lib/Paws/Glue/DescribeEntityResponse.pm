
package Paws::Glue::DescribeEntityResponse;
  use Moose;
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Field]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DescribeEntityResponse

=head1 ATTRIBUTES


=head2 Fields => ArrayRef[L<Paws::Glue::Field>]

Describes the fields for that connector entity. This is the list of
C<Field> objects. C<Field> is very similar to column in a database. The
C<Field> object has information about different properties associated
with fields in the connector.


=head2 NextToken => Str

A continuation token, present if the current segment is not the last.


=head2 _request_id => Str


=cut

1;