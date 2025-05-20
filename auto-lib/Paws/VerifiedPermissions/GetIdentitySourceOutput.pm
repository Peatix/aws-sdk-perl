
package Paws::VerifiedPermissions::GetIdentitySourceOutput;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::VerifiedPermissions::ConfigurationDetail', traits => ['NameInRequest'], request_name => 'configuration' );
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate' , required => 1);
  has Details => (is => 'ro', isa => 'Paws::VerifiedPermissions::IdentitySourceDetails', traits => ['NameInRequest'], request_name => 'details' );
  has IdentitySourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identitySourceId' , required => 1);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);
  has PrincipalEntityType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalEntityType' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::GetIdentitySourceOutput

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::VerifiedPermissions::ConfigurationDetail>

Contains configuration information about an identity source.


=head2 B<REQUIRED> CreatedDate => Str

The date and time that the identity source was originally created.


=head2 Details => L<Paws::VerifiedPermissions::IdentitySourceDetails>

A structure that describes the configuration of the identity source.


=head2 B<REQUIRED> IdentitySourceId => Str

The ID of the identity source.


=head2 B<REQUIRED> LastUpdatedDate => Str

The date and time that the identity source was most recently updated.


=head2 B<REQUIRED> PolicyStoreId => Str

The ID of the policy store that contains the identity source.


=head2 B<REQUIRED> PrincipalEntityType => Str

The data type of principals generated for identities authenticated by
this identity source.


=head2 _request_id => Str


=cut

1;