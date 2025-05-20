
package Paws::AmplifyBackend::GetBackendStorageResponse;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId');
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'backendEnvironmentName');
  has ResourceConfig => (is => 'ro', isa => 'Paws::AmplifyBackend::GetBackendStorageResourceConfig', traits => ['NameInRequest'], request_name => 'resourceConfig');
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::GetBackendStorageResponse

=head1 ATTRIBUTES


=head2 AppId => Str

The app ID.


=head2 BackendEnvironmentName => Str

The name of the backend environment.


=head2 ResourceConfig => L<Paws::AmplifyBackend::GetBackendStorageResourceConfig>

The resource configuration for the backend storage resource.


=head2 ResourceName => Str

The name of the storage resource.


=head2 _request_id => Str


=cut

