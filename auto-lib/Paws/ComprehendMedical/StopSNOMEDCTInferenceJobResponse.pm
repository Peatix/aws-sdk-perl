
package Paws::ComprehendMedical::StopSNOMEDCTInferenceJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::StopSNOMEDCTInferenceJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier generated for the job. To get the status of job, use
this identifier with the DescribeSNOMEDCTInferenceJob operation.


=head2 _request_id => Str


=cut

1;