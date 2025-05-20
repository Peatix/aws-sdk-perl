
package Paws::AmplifyBackend::CreateBackendStorage;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'backendEnvironmentName', required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::AmplifyBackend::CreateBackendStorageResourceConfig', traits => ['NameInRequest'], request_name => 'resourceConfig', required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBackendStorage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/storage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::CreateBackendStorageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::CreateBackendStorage - Arguments for method CreateBackendStorage on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBackendStorage on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method CreateBackendStorage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBackendStorage.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $CreateBackendStorageResponse = $amplifybackend->CreateBackendStorage(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',
      ResourceConfig         => {
        Permissions => {
          Authenticated => [
            'READ', ...    # values: READ, CREATE_AND_UPDATE, DELETE
          ],
          UnAuthenticated => [
            'READ', ...    # values: READ, CREATE_AND_UPDATE, DELETE
          ],    # OPTIONAL
        },
        ServiceName => 'S3',           # values: S3
        BucketName  => 'My__string',
      },
      ResourceName => 'My__string',

    );

    # Results:
    my $AppId = $CreateBackendStorageResponse->AppId;
    my $BackendEnvironmentName =
      $CreateBackendStorageResponse->BackendEnvironmentName;
    my $JobId  = $CreateBackendStorageResponse->JobId;
    my $Status = $CreateBackendStorageResponse->Status;

    # Returns a L<Paws::AmplifyBackend::CreateBackendStorageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/CreateBackendStorage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.



=head2 B<REQUIRED> ResourceConfig => L<Paws::AmplifyBackend::CreateBackendStorageResourceConfig>

The resource configuration for creating backend storage.



=head2 B<REQUIRED> ResourceName => Str

The name of the storage resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBackendStorage in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

