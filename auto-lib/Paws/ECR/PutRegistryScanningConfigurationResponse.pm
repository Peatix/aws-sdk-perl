
package Paws::ECR::PutRegistryScanningConfigurationResponse;
  use Moose;
  has RegistryScanningConfiguration => (is => 'ro', isa => 'Paws::ECR::RegistryScanningConfiguration', traits => ['NameInRequest'], request_name => 'registryScanningConfiguration' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutRegistryScanningConfigurationResponse

=head1 ATTRIBUTES


=head2 RegistryScanningConfiguration => L<Paws::ECR::RegistryScanningConfiguration>

The scanning configuration for your registry.


=head2 _request_id => Str


=cut

1;