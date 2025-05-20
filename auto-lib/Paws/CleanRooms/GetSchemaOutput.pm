
package Paws::CleanRooms::GetSchemaOutput;
  use Moose;
  has Schema => (is => 'ro', isa => 'Paws::CleanRooms::Schema', traits => ['NameInRequest'], request_name => 'schema', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetSchemaOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Schema => L<Paws::CleanRooms::Schema>

The entire schema object.


=head2 _request_id => Str


=cut

