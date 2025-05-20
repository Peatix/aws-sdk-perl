
package Paws::VerifiedPermissions::CreatePolicyStoreOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate' , required => 1);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::CreatePolicyStoreOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the new policy store.


=head2 B<REQUIRED> CreatedDate => Str

The date and time the policy store was originally created.


=head2 B<REQUIRED> LastUpdatedDate => Str

The date and time the policy store was last updated.


=head2 B<REQUIRED> PolicyStoreId => Str

The unique ID of the new policy store.


=head2 _request_id => Str


=cut

1;