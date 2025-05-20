
package Paws::Inspector2::CreateCisScanConfigurationResponse;
  use Moose;
  has ScanConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanConfigurationArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CreateCisScanConfigurationResponse

=head1 ATTRIBUTES


=head2 ScanConfigurationArn => Str

The scan configuration ARN for the CIS scan configuration.


=head2 _request_id => Str


=cut

