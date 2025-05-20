
package Paws::VerifiedPermissions::UpdatePolicyStoreOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate' , required => 1);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::UpdatePolicyStoreOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the updated policy store.


=head2 B<REQUIRED> CreatedDate => Str

The date and time that the policy store was originally created.


=head2 B<REQUIRED> LastUpdatedDate => Str

The date and time that the policy store was most recently updated.


=head2 B<REQUIRED> PolicyStoreId => Str

The ID of the updated policy store.


=head2 _request_id => Str


=cut

1;