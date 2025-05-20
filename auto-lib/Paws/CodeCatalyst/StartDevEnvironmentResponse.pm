
package Paws::CodeCatalyst::StartDevEnvironmentResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spaceName', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::StartDevEnvironmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The system-generated unique ID of the Dev Environment.


=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.


=head2 B<REQUIRED> SpaceName => Str

The name of the space.


=head2 B<REQUIRED> Status => Str

The status of the Dev Environment.

Valid values are: C<"PENDING">, C<"RUNNING">, C<"STARTING">, C<"STOPPING">, C<"STOPPED">, C<"FAILED">, C<"DELETING">, C<"DELETED">
=head2 _request_id => Str


=cut

