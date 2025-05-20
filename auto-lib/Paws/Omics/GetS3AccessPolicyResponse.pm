
package Paws::Omics::GetS3AccessPolicyResponse;
  use Moose;
  has S3AccessPointArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3AccessPointArn');
  has S3AccessPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3AccessPolicy', required => 1);
  has StoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storeId');
  has StoreType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storeType');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetS3AccessPolicyResponse

=head1 ATTRIBUTES


=head2 S3AccessPointArn => Str

The S3 access point ARN that has the access policy.


=head2 B<REQUIRED> S3AccessPolicy => Str

The current resource policy that controls S3 access on the store.


=head2 StoreId => Str

The Amazon Web Services-generated Sequence Store or Reference Store ID.


=head2 StoreType => Str

The type of store associated with the access point.

Valid values are: C<"SEQUENCE_STORE">, C<"REFERENCE_STORE">
=head2 UpdateTime => Str

The time when the policy was last updated.


=head2 _request_id => Str


=cut

