
package Paws::Inspector2::DeleteCisScanConfigurationResponse;
  use Moose;
  has ScanConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanConfigurationArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::DeleteCisScanConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScanConfigurationArn => Str

The ARN of the CIS scan configuration.


=head2 _request_id => Str


=cut

