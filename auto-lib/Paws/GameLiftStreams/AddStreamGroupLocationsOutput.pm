
package Paws::GameLiftStreams::AddStreamGroupLocationsOutput;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has Locations => (is => 'ro', isa => 'ArrayRef[Paws::GameLiftStreams::LocationState]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::AddStreamGroupLocationsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

This value is the Amazon Resource Name (ARN) that uniquely identifies
the stream group resource. Format example: C<sg-1AB2C3De4>.


=head2 B<REQUIRED> Locations => ArrayRef[L<Paws::GameLiftStreams::LocationState>]

This value is set of locations, including their name, current status,
and capacities.

A location can be in one of the following states:

=over

=item *

B<ACTIVATING>: Amazon GameLift Streams is preparing the location. You
cannot stream from, scale the capacity of, or remove this location yet.

=item *

B<ACTIVE>: The location is provisioned with initial capacity. You can
now stream from, scale the capacity of, or remove this location.

=item *

B<ERROR>: Amazon GameLift Streams failed to set up this location. The
StatusReason field describes the error. You can remove this location
and try to add it again.

=item *

B<REMOVING>: Amazon GameLift Streams is working to remove this
location. It releases all provisioned capacity for this location in
this stream group.

=back



=head2 _request_id => Str


=cut

