
package Paws::SageMaker::CreatePartnerAppPresignedUrlResponse;
  use Moose;
  has Url => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreatePartnerAppPresignedUrlResponse

=head1 ATTRIBUTES


=head2 Url => Str

The presigned URL that you can use to access the SageMaker Partner AI
App.


=head2 _request_id => Str


=cut

1;