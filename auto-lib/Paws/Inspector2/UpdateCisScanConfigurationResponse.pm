
package Paws::Inspector2::UpdateCisScanConfigurationResponse;
  use Moose;
  has ScanConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanConfigurationArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::UpdateCisScanConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScanConfigurationArn => Str

The CIS scan configuration ARN.


=head2 _request_id => Str


=cut

