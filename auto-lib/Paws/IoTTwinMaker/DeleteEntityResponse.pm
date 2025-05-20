
package Paws::IoTTwinMaker::DeleteEntityResponse;
  use Moose;
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::DeleteEntityResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> State => Str

The current state of the deleted entity.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"ACTIVE">, C<"ERROR">
=head2 _request_id => Str


=cut

