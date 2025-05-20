
package Paws::CodeCatalyst::StartDevEnvironmentSessionResponse;
  use Moose;
  has AccessDetails => (is => 'ro', isa => 'Paws::CodeCatalyst::DevEnvironmentAccessDetails', traits => ['NameInRequest'], request_name => 'accessDetails', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId');
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spaceName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::StartDevEnvironmentSessionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessDetails => L<Paws::CodeCatalyst::DevEnvironmentAccessDetails>




=head2 B<REQUIRED> Id => Str

The system-generated unique ID of the Dev Environment.


=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.


=head2 SessionId => Str

The system-generated unique ID of the Dev Environment session.


=head2 B<REQUIRED> SpaceName => Str

The name of the space.


=head2 _request_id => Str


=cut

