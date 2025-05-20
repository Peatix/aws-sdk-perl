
package Paws::CleanRooms::BatchGetSchemaOutput;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::BatchGetSchemaError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);
  has Schemas => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::Schema]', traits => ['NameInRequest'], request_name => 'schemas', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::BatchGetSchemaOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::CleanRooms::BatchGetSchemaError>]

Error reasons for schemas that could not be retrieved. One error is
returned for every schema that could not be retrieved.


=head2 B<REQUIRED> Schemas => ArrayRef[L<Paws::CleanRooms::Schema>]

The retrieved list of schemas.


=head2 _request_id => Str


=cut

