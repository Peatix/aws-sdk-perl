
package Paws::IoT::UpdateCommandResponse;
  use Moose;
  has CommandId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commandId');
  has Deprecated => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deprecated');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateCommandResponse

=head1 ATTRIBUTES


=head2 CommandId => Str

The unique identifier of the command.


=head2 Deprecated => Bool

The boolean that indicates whether the command was deprecated.


=head2 Description => Str

The updated text description of the command.


=head2 DisplayName => Str

The updated user-friendly display name in the console for the command.


=head2 LastUpdatedAt => Str

The date and time (epoch timestamp in seconds) when the command was
last updated.


=head2 _request_id => Str


=cut

