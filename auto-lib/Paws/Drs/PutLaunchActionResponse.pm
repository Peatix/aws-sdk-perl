
package Paws::Drs::PutLaunchActionResponse;
  use Moose;
  has ActionCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionCode');
  has ActionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionId');
  has ActionVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionVersion');
  has Active => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'active');
  has Category => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'category');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Optional => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'optional');
  has Order => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'order');
  has Parameters => (is => 'ro', isa => 'Paws::Drs::LaunchActionParameters', traits => ['NameInRequest'], request_name => 'parameters');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceId');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::PutLaunchActionResponse

=head1 ATTRIBUTES


=head2 ActionCode => Str

Launch action code.


=head2 ActionId => Str




=head2 ActionVersion => Str




=head2 Active => Bool

Whether the launch action is active.


=head2 Category => Str



Valid values are: C<"MONITORING">, C<"VALIDATION">, C<"CONFIGURATION">, C<"SECURITY">, C<"OTHER">
=head2 Description => Str




=head2 Name => Str




=head2 Optional => Bool

Whether the launch will not be marked as failed if this action fails.


=head2 Order => Int




=head2 Parameters => L<Paws::Drs::LaunchActionParameters>




=head2 ResourceId => Str




=head2 Type => Str

Launch action type.

Valid values are: C<"SSM_AUTOMATION">, C<"SSM_COMMAND">
=head2 _request_id => Str


=cut

