
package Paws::ECR::BatchGetRepositoryScanningConfigurationResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECR::RepositoryScanningConfigurationFailure]', traits => ['NameInRequest'], request_name => 'failures' );
  has ScanningConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ECR::RepositoryScanningConfiguration]', traits => ['NameInRequest'], request_name => 'scanningConfigurations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::BatchGetRepositoryScanningConfigurationResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECR::RepositoryScanningConfigurationFailure>]

Any failures associated with the call.


=head2 ScanningConfigurations => ArrayRef[L<Paws::ECR::RepositoryScanningConfiguration>]

The scanning configuration for the requested repositories.


=head2 _request_id => Str


=cut

1;