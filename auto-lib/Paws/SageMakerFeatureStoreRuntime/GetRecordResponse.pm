
package Paws::SageMakerFeatureStoreRuntime::GetRecordResponse;
  use Moose;
  has ExpiresAt => (is => 'ro', isa => 'Str');
  has Record => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerFeatureStoreRuntime::FeatureValue]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerFeatureStoreRuntime::GetRecordResponse

=head1 ATTRIBUTES


=head2 ExpiresAt => Str

The C<ExpiresAt> ISO string of the requested record.


=head2 Record => ArrayRef[L<Paws::SageMakerFeatureStoreRuntime::FeatureValue>]

The record you requested. A list of C<FeatureValues>.


=head2 _request_id => Str


=cut

