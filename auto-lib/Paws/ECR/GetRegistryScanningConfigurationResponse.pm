
package Paws::ECR::GetRegistryScanningConfigurationResponse;
  use Moose;
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has ScanningConfiguration => (is => 'ro', isa => 'Paws::ECR::RegistryScanningConfiguration', traits => ['NameInRequest'], request_name => 'scanningConfiguration' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetRegistryScanningConfigurationResponse

=head1 ATTRIBUTES


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 ScanningConfiguration => L<Paws::ECR::RegistryScanningConfiguration>

The scanning configuration for the registry.


=head2 _request_id => Str


=cut

1;