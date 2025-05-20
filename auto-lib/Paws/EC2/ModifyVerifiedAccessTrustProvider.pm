
package Paws::EC2::ModifyVerifiedAccessTrustProvider;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceOptions => (is => 'ro', isa => 'Paws::EC2::ModifyVerifiedAccessTrustProviderDeviceOptions');
  has DryRun => (is => 'ro', isa => 'Bool');
  has NativeApplicationOidcOptions => (is => 'ro', isa => 'Paws::EC2::ModifyVerifiedAccessNativeApplicationOidcOptions');
  has OidcOptions => (is => 'ro', isa => 'Paws::EC2::ModifyVerifiedAccessTrustProviderOidcOptions');
  has SseSpecification => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessSseSpecificationRequest');
  has VerifiedAccessTrustProviderId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVerifiedAccessTrustProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVerifiedAccessTrustProviderResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVerifiedAccessTrustProvider - Arguments for method ModifyVerifiedAccessTrustProvider on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVerifiedAccessTrustProvider on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVerifiedAccessTrustProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVerifiedAccessTrustProvider.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVerifiedAccessTrustProviderResult =
      $ec2->ModifyVerifiedAccessTrustProvider(
      VerifiedAccessTrustProviderId => 'MyVerifiedAccessTrustProviderId',
      ClientToken   => 'MyString',                                # OPTIONAL
      Description   => 'MyString',                                # OPTIONAL
      DeviceOptions => { PublicSigningKeyUrl => 'MyString', },    # OPTIONAL
      DryRun        => 1,                                         # OPTIONAL
      NativeApplicationOidcOptions => {
        AuthorizationEndpoint    => 'MyString',
        ClientId                 => 'MyString',
        ClientSecret             => 'MyClientSecretType',         # OPTIONAL
        Issuer                   => 'MyString',
        PublicSigningKeyEndpoint => 'MyString',
        Scope                    => 'MyString',
        TokenEndpoint            => 'MyString',
        UserInfoEndpoint         => 'MyString',
      },    # OPTIONAL
      OidcOptions => {
        AuthorizationEndpoint => 'MyString',
        ClientId              => 'MyString',
        ClientSecret          => 'MyClientSecretType',    # OPTIONAL
        Issuer                => 'MyString',
        Scope                 => 'MyString',
        TokenEndpoint         => 'MyString',
        UserInfoEndpoint      => 'MyString',
      },    # OPTIONAL
      SseSpecification => {
        CustomerManagedKeyEnabled => 1,
        KmsKeyArn                 => 'MyKmsKeyArn',    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $VerifiedAccessTrustProvider =
      $ModifyVerifiedAccessTrustProviderResult->VerifiedAccessTrustProvider;

    # Returns a L<Paws::EC2::ModifyVerifiedAccessTrustProviderResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVerifiedAccessTrustProvider>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure idempotency
of your modification request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 Description => Str

A description for the Verified Access trust provider.



=head2 DeviceOptions => L<Paws::EC2::ModifyVerifiedAccessTrustProviderDeviceOptions>

The options for a device-based trust provider. This parameter is
required when the provider type is C<device>.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 NativeApplicationOidcOptions => L<Paws::EC2::ModifyVerifiedAccessNativeApplicationOidcOptions>

The OpenID Connect (OIDC) options.



=head2 OidcOptions => L<Paws::EC2::ModifyVerifiedAccessTrustProviderOidcOptions>

The options for an OpenID Connect-compatible user-identity trust
provider.



=head2 SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationRequest>

The options for server side encryption.



=head2 B<REQUIRED> VerifiedAccessTrustProviderId => Str

The ID of the Verified Access trust provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVerifiedAccessTrustProvider in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

