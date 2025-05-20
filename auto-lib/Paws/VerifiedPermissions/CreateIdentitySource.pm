
package Paws::VerifiedPermissions::CreateIdentitySource;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Configuration => (is => 'ro', isa => 'Paws::VerifiedPermissions::Configuration', traits => ['NameInRequest'], request_name => 'configuration' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);
  has PrincipalEntityType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalEntityType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIdentitySource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::CreateIdentitySourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::CreateIdentitySource - Arguments for method CreateIdentitySource on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIdentitySource on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method CreateIdentitySource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIdentitySource.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $CreateIdentitySourceOutput = $verifiedpermissions->CreateIdentitySource(
      Configuration => {
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
      PolicyStoreId       => 'MyPolicyStoreId',
      ClientToken         => 'MyIdempotencyToken',       # OPTIONAL
      PrincipalEntityType => 'MyPrincipalEntityType',    # OPTIONAL
    );

    # Results:
    my $CreatedDate      = $CreateIdentitySourceOutput->CreatedDate;
    my $IdentitySourceId = $CreateIdentitySourceOutput->IdentitySourceId;
    my $LastUpdatedDate  = $CreateIdentitySourceOutput->LastUpdatedDate;
    my $PolicyStoreId    = $CreateIdentitySourceOutput->PolicyStoreId;

    # Returns a L<Paws::VerifiedPermissions::CreateIdentitySourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/CreateIdentitySource>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Specifies a unique, case-sensitive ID that you provide to ensure the
idempotency of the request. This lets you safely retry the request
without accidentally performing the same operation a second time.
Passing the same value to a later call to an operation requires that
you also pass the same value for all other parameters. We recommend
that you use a UUID type of value.
(https://wikipedia.org/wiki/Universally_unique_identifier).

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same C<ClientToken>, but with
different parameters, the retry fails with an C<ConflictException>
error.

Verified Permissions recognizes a C<ClientToken> for eight hours. After
eight hours, the next request with the same parameters performs the
operation again regardless of the value of C<ClientToken>.



=head2 B<REQUIRED> Configuration => L<Paws::VerifiedPermissions::Configuration>

Specifies the details required to communicate with the identity
provider (IdP) associated with this identity source.



=head2 B<REQUIRED> PolicyStoreId => Str

Specifies the ID of the policy store in which you want to store this
identity source. Only policies and requests made using this policy
store can reference identities from the identity provider configured in
the new identity source.



=head2 PrincipalEntityType => Str

Specifies the namespace and data type of the principals generated for
identities authenticated by the new identity source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIdentitySource in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

