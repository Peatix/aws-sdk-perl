
package Paws::VerifiedPermissions::CreateIdentitySourceOutput;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate' , required => 1);
  has IdentitySourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identitySourceId' , required => 1);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::CreateIdentitySourceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedDate => Str

The date and time the identity source was originally created.


=head2 B<REQUIRED> IdentitySourceId => Str

The unique ID of the new identity source.


=head2 B<REQUIRED> LastUpdatedDate => Str

The date and time the identity source was most recently updated.


=head2 B<REQUIRED> PolicyStoreId => Str

The ID of the policy store that contains the identity source.


=head2 _request_id => Str


=cut

1;