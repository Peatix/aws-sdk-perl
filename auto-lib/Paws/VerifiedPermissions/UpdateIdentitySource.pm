
package Paws::VerifiedPermissions::UpdateIdentitySource;
  use Moose;
  has IdentitySourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identitySourceId' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);
  has PrincipalEntityType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalEntityType' );
  has UpdateConfiguration => (is => 'ro', isa => 'Paws::VerifiedPermissions::UpdateConfiguration', traits => ['NameInRequest'], request_name => 'updateConfiguration' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIdentitySource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::UpdateIdentitySourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::UpdateIdentitySource - Arguments for method UpdateIdentitySource on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIdentitySource on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method UpdateIdentitySource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIdentitySource.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $UpdateIdentitySourceOutput = $verifiedpermissions->UpdateIdentitySource(
      IdentitySourceId    => 'MyIdentitySourceId',
      PolicyStoreId       => 'MyPolicyStoreId',
      UpdateConfiguration => {
        CognitoUserPoolConfiguration => {
          UserPoolArn => 'MyUserPoolArn',    # min: 1, max: 255
          ClientIds   => [
            'MyClientId', ...                # min: 1, max: 255
          ],    # max: 1000; OPTIONAL
          GroupConfiguration => {
            GroupEntityType => 'MyGroupEntityType',    # min: 1, max: 200

          },    # OPTIONAL
        },    # OPTIONAL
        OpenIdConnectConfiguration => {
          Issuer         => 'MyIssuer',    # min: 1, max: 2048
          TokenSelection => {
            AccessTokenOnly => {
              Audiences => [
                'MyAudience', ...    # min: 1, max: 255
              ],    # min: 1, max: 255; OPTIONAL
              PrincipalIdClaim => 'MyClaim',    # min: 1; OPTIONAL
            },    # OPTIONAL
            IdentityTokenOnly => {
              ClientIds => [
                'MyClientId', ...    # min: 1, max: 255
              ],    # max: 1000; OPTIONAL
              PrincipalIdClaim => 'MyClaim',    # min: 1; OPTIONAL
            },    # OPTIONAL
          },
          EntityIdPrefix     => 'MyEntityIdPrefix', # min: 1, max: 100; OPTIONAL
          GroupConfiguration => {
            GroupClaim      => 'MyClaim',              # min: 1; OPTIONAL
            GroupEntityType => 'MyGroupEntityType',    # min: 1, max: 200

          },    # OPTIONAL
        },    # OPTIONAL
      },
      PrincipalEntityType => 'MyPrincipalEntityType',    # OPTIONAL
    );

    # Results:
    my $CreatedDate      = $UpdateIdentitySourceOutput->CreatedDate;
    my $IdentitySourceId = $UpdateIdentitySourceOutput->IdentitySourceId;
    my $LastUpdatedDate  = $UpdateIdentitySourceOutput->LastUpdatedDate;
    my $PolicyStoreId    = $UpdateIdentitySourceOutput->PolicyStoreId;

    # Returns a L<Paws::VerifiedPermissions::UpdateIdentitySourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/UpdateIdentitySource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentitySourceId => Str

Specifies the ID of the identity source that you want to update.



=head2 B<REQUIRED> PolicyStoreId => Str

Specifies the ID of the policy store that contains the identity source
that you want to update.



=head2 PrincipalEntityType => Str

Specifies the data type of principals generated for identities
authenticated by the identity source.



=head2 B<REQUIRED> UpdateConfiguration => L<Paws::VerifiedPermissions::UpdateConfiguration>

Specifies the details required to communicate with the identity
provider (IdP) associated with this identity source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIdentitySource in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

