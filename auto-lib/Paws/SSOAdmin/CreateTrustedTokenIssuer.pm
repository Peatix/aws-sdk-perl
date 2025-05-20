
package Paws::SSOAdmin::CreateTrustedTokenIssuer;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::Tag]');
  has TrustedTokenIssuerConfiguration => (is => 'ro', isa => 'Paws::SSOAdmin::TrustedTokenIssuerConfiguration', required => 1);
  has TrustedTokenIssuerType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrustedTokenIssuer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::CreateTrustedTokenIssuerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::CreateTrustedTokenIssuer - Arguments for method CreateTrustedTokenIssuer on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrustedTokenIssuer on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method CreateTrustedTokenIssuer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrustedTokenIssuer.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $CreateTrustedTokenIssuerResponse = $sso->CreateTrustedTokenIssuer(
      InstanceArn                     => 'MyInstanceArn',
      Name                            => 'MyTrustedTokenIssuerName',
      TrustedTokenIssuerConfiguration => {
        OidcJwtConfiguration => {
          ClaimAttributePath => 'MyClaimAttributePath',    # min: 1, max: 255
          IdentityStoreAttributePath => 'MyJMESPath',      # min: 1, max: 255
          IssuerUrl           => 'MyTrustedTokenIssuerUrl',   # min: 1, max: 512
          JwksRetrievalOption =>
            'OPEN_ID_DISCOVERY',    # values: OPEN_ID_DISCOVERY

        },    # OPTIONAL
      },
      TrustedTokenIssuerType => 'OIDC_JWT',
      ClientToken            => 'MyClientToken',    # OPTIONAL
      Tags                   => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $TrustedTokenIssuerArn =
      $CreateTrustedTokenIssuerResponse->TrustedTokenIssuerArn;

    # Returns a L<Paws::SSOAdmin::CreateTrustedTokenIssuerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/CreateTrustedTokenIssuer>

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
different parameters, the retry fails with an
C<IdempotentParameterMismatch> error.



=head2 B<REQUIRED> InstanceArn => Str

Specifies the ARN of the instance of IAM Identity Center to contain the
new trusted token issuer configuration.



=head2 B<REQUIRED> Name => Str

Specifies the name of the new trusted token issuer configuration.



=head2 Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]

Specifies tags to be attached to the new trusted token issuer
configuration.



=head2 B<REQUIRED> TrustedTokenIssuerConfiguration => L<Paws::SSOAdmin::TrustedTokenIssuerConfiguration>

Specifies settings that apply to the new trusted token issuer
configuration. The settings that are available depend on what
C<TrustedTokenIssuerType> you specify.



=head2 B<REQUIRED> TrustedTokenIssuerType => Str

Specifies the type of the new trusted token issuer.

Valid values are: C<"OIDC_JWT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrustedTokenIssuer in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

