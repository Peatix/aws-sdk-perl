
package Paws::IoTTwinMaker::UpdateEntityResponse;
  use Moose;
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state', required => 1);
  has UpdateDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::UpdateEntityResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> State => Str

The current state of the entity update.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"ACTIVE">, C<"ERROR">
=head2 B<REQUIRED> UpdateDateTime => Str

The date and time when the entity was last updated.


=head2 _request_id => Str


=cut

