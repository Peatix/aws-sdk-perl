
package Paws::MigrationHubRefactorSpaces::DeleteApplicationResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::DeleteApplicationResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The ID of the application.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the application.


=head2 EnvironmentId => Str

The unique identifier of the applicationE<rsquo>s environment.


=head2 LastUpdatedTime => Str

A timestamp that indicates when the environment was last updated.


=head2 Name => Str

The name of the application.


=head2 State => Str

The current state of the application.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"UPDATING">
=head2 _request_id => Str


=cut

