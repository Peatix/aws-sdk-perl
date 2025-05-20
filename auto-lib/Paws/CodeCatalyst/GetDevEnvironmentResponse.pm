
package Paws::CodeCatalyst::GetDevEnvironmentResponse;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alias');
  has CreatorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creatorId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Ides => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::Ide]', traits => ['NameInRequest'], request_name => 'ides');
  has InactivityTimeoutMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'inactivityTimeoutMinutes', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType', required => 1);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedTime', required => 1);
  has PersistentStorage => (is => 'ro', isa => 'Paws::CodeCatalyst::PersistentStorage', traits => ['NameInRequest'], request_name => 'persistentStorage', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);
  has Repositories => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::DevEnvironmentRepositorySummary]', traits => ['NameInRequest'], request_name => 'repositories', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spaceName', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has VpcConnectionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcConnectionName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetDevEnvironmentResponse

=head1 ATTRIBUTES


=head2 Alias => Str

The user-specified alias for the Dev Environment.


=head2 B<REQUIRED> CreatorId => Str

The system-generated unique ID of the user who created the Dev
Environment.


=head2 B<REQUIRED> Id => Str

The system-generated unique ID of the Dev Environment.


=head2 Ides => ArrayRef[L<Paws::CodeCatalyst::Ide>]

Information about the integrated development environment (IDE)
configured for the Dev Environment.


=head2 B<REQUIRED> InactivityTimeoutMinutes => Int

The amount of time the Dev Environment will run without any activity
detected before stopping, in minutes.


=head2 B<REQUIRED> InstanceType => Str

The Amazon EC2 instace type to use for the Dev Environment.

Valid values are: C<"dev.standard1.small">, C<"dev.standard1.medium">, C<"dev.standard1.large">, C<"dev.standard1.xlarge">
=head2 B<REQUIRED> LastUpdatedTime => Str

The time when the Dev Environment was last updated, in coordinated
universal time (UTC) timestamp format as specified in RFC 3339
(https://www.rfc-editor.org/rfc/rfc3339#section-5.6).


=head2 B<REQUIRED> PersistentStorage => L<Paws::CodeCatalyst::PersistentStorage>

Information about the amount of storage allocated to the Dev
Environment. By default, a Dev Environment is configured to have 16GB
of persistent storage.


=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.


=head2 B<REQUIRED> Repositories => ArrayRef[L<Paws::CodeCatalyst::DevEnvironmentRepositorySummary>]

The source repository that contains the branch cloned into the Dev
Environment.


=head2 B<REQUIRED> SpaceName => Str

The name of the space.


=head2 B<REQUIRED> Status => Str

The current status of the Dev Environment.

Valid values are: C<"PENDING">, C<"RUNNING">, C<"STARTING">, C<"STOPPING">, C<"STOPPED">, C<"FAILED">, C<"DELETING">, C<"DELETED">
=head2 StatusReason => Str

The reason for the status.


=head2 VpcConnectionName => Str

The name of the connection used to connect to Amazon VPC used when the
Dev Environment was created, if any.


=head2 _request_id => Str


=cut

