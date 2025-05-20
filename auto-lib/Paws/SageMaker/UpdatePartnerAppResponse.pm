
package Paws::SageMaker::UpdatePartnerAppResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdatePartnerAppResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the SageMaker Partner AI App that was updated.


=head2 _request_id => Str


=cut

1;