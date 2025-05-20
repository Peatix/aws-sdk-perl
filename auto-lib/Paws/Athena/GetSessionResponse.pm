
package Paws::Athena::GetSessionResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EngineConfiguration => (is => 'ro', isa => 'Paws::Athena::EngineConfiguration');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NotebookVersion => (is => 'ro', isa => 'Str');
  has SessionConfiguration => (is => 'ro', isa => 'Paws::Athena::SessionConfiguration');
  has SessionId => (is => 'ro', isa => 'Str');
  has Statistics => (is => 'ro', isa => 'Paws::Athena::SessionStatistics');
  has Status => (is => 'ro', isa => 'Paws::Athena::SessionStatus');
  has WorkGroup => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetSessionResponse

=head1 ATTRIBUTES


=head2 Description => Str

The session description.


=head2 EngineConfiguration => L<Paws::Athena::EngineConfiguration>

Contains engine configuration information like DPU usage.


=head2 EngineVersion => Str

The engine version used by the session (for example, C<PySpark engine
version 3>). You can get a list of engine versions by calling
ListEngineVersions.


=head2 NotebookVersion => Str

The notebook version.


=head2 SessionConfiguration => L<Paws::Athena::SessionConfiguration>

Contains the workgroup configuration information used by the session.


=head2 SessionId => Str

The session ID.


=head2 Statistics => L<Paws::Athena::SessionStatistics>

Contains the DPU execution time.


=head2 Status => L<Paws::Athena::SessionStatus>

Contains information about the status of the session.


=head2 WorkGroup => Str

The workgroup to which the session belongs.


=head2 _request_id => Str


=cut

1;