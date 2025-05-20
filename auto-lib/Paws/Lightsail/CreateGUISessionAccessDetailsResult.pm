
package Paws::Lightsail::CreateGUISessionAccessDetailsResult;
  use Moose;
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason' );
  has PercentageComplete => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'percentageComplete' );
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName' );
  has Sessions => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Session]', traits => ['NameInRequest'], request_name => 'sessions' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateGUISessionAccessDetailsResult

=head1 ATTRIBUTES


=head2 FailureReason => Str

The reason the operation failed.


=head2 PercentageComplete => Int

The percentage of completion for the operation.


=head2 ResourceName => Str

The resource name.


=head2 Sessions => ArrayRef[L<Paws::Lightsail::Session>]

Returns information about the specified Amazon DCV GUI session.


=head2 Status => Str

The status of the operation.

Valid values are: C<"startExpired">, C<"notStarted">, C<"started">, C<"starting">, C<"stopped">, C<"stopping">, C<"settingUpInstance">, C<"failedInstanceCreation">, C<"failedStartingGUISession">, C<"failedStoppingGUISession">
=head2 _request_id => Str


=cut

1;