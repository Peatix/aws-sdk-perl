
package Paws::CodeCatalyst::UpdateDevEnvironmentResponse;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alias');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Ides => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::IdeConfiguration]', traits => ['NameInRequest'], request_name => 'ides');
  has InactivityTimeoutMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'inactivityTimeoutMinutes');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType');
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spaceName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::UpdateDevEnvironmentResponse

=head1 ATTRIBUTES


=head2 Alias => Str

The user-specified alias for the Dev Environment.


=head2 ClientToken => Str

A user-specified idempotency token. Idempotency ensures that an API
request completes only once. With an idempotent request, if the
original request completes successfully, the subsequent retries return
the result from the original successful request and have no additional
effect.


=head2 B<REQUIRED> Id => Str

The system-generated unique ID of the Dev Environment.


=head2 Ides => ArrayRef[L<Paws::CodeCatalyst::IdeConfiguration>]

Information about the integrated development environment (IDE)
configured for the Dev Environment.


=head2 InactivityTimeoutMinutes => Int

The amount of time the Dev Environment will run without any activity
detected before stopping, in minutes.


=head2 InstanceType => Str

The Amazon EC2 instace type to use for the Dev Environment.

Valid values are: C<"dev.standard1.small">, C<"dev.standard1.medium">, C<"dev.standard1.large">, C<"dev.standard1.xlarge">
=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.


=head2 B<REQUIRED> SpaceName => Str

The name of the space.


=head2 _request_id => Str


=cut

