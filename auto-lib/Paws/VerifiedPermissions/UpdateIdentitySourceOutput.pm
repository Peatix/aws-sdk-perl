
package Paws::VerifiedPermissions::UpdateIdentitySourceOutput;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate' , required => 1);
  has IdentitySourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identitySourceId' , required => 1);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::UpdateIdentitySourceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedDate => Str

The date and time that the updated identity source was originally
created.


=head2 B<REQUIRED> IdentitySourceId => Str

The ID of the updated identity source.


=head2 B<REQUIRED> LastUpdatedDate => Str

The date and time that the identity source was most recently updated.


=head2 B<REQUIRED> PolicyStoreId => Str

The ID of the policy store that contains the updated identity source.


=head2 _request_id => Str


=cut

1;