
package Paws::MigrationHubRefactorSpaces::CreateEnvironmentResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NetworkFabricType => (is => 'ro', isa => 'Str');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::CreateEnvironmentResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the environment.


=head2 CreatedTime => Str

A timestamp that indicates when the environment is created.


=head2 Description => Str

A description of the environment.


=head2 EnvironmentId => Str

The unique identifier of the environment.


=head2 LastUpdatedTime => Str

A timestamp that indicates when the environment was last updated.


=head2 Name => Str

The name of the environment.


=head2 NetworkFabricType => Str

The network fabric type of the environment.

Valid values are: C<"TRANSIT_GATEWAY">, C<"NONE">
=head2 OwnerAccountId => Str

The Amazon Web Services account ID of environment owner.


=head2 State => Str

The current state of the environment.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">
=head2 Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>

The tags assigned to the created environment. A tag is a label that you
assign to an Amazon Web Services resource. Each tag consists of a
key-value pair..


=head2 _request_id => Str


=cut

