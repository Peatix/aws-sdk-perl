
package Paws::Omics::PutS3AccessPolicyResponse;
  use Moose;
  has S3AccessPointArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3AccessPointArn');
  has StoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storeId');
  has StoreType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storeType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::PutS3AccessPolicyResponse

=head1 ATTRIBUTES


=head2 S3AccessPointArn => Str

The S3 access point ARN that now has the access policy.


=head2 StoreId => Str

The Amazon Web Services-generated Sequence Store or Reference Store ID.


=head2 StoreType => Str

The type of store associated with the access point.

Valid values are: C<"SEQUENCE_STORE">, C<"REFERENCE_STORE">
=head2 _request_id => Str


=cut

