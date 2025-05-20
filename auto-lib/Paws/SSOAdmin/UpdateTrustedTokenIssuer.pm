
package Paws::SSOAdmin::UpdateTrustedTokenIssuer;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has TrustedTokenIssuerArn => (is => 'ro', isa => 'Str', required => 1);
  has TrustedTokenIssuerConfiguration => (is => 'ro', isa => 'Paws::SSOAdmin::TrustedTokenIssuerUpdateConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrustedTokenIssuer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::UpdateTrustedTokenIssuerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::UpdateTrustedTokenIssuer - Arguments for method UpdateTrustedTokenIssuer on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTrustedTokenIssuer on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method UpdateTrustedTokenIssuer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTrustedTokenIssuer.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $UpdateTrustedTokenIssuerResponse = $sso->UpdateTrustedTokenIssuer(
      TrustedTokenIssuerArn           => 'MyTrustedTokenIssuerArn',
      Name                            => 'MyTrustedTokenIssuerName',  # OPTIONAL
      TrustedTokenIssuerConfiguration => {
        OidcJwtConfiguration => {
          ClaimAttributePath =>
            'MyClaimAttributePath',    # min: 1, max: 255; OPTIONAL
          IdentityStoreAttributePath =>
            'MyJMESPath',              # min: 1, max: 255; OPTIONAL
          JwksRetrievalOption =>
            'OPEN_ID_DISCOVERY',       # values: OPEN_ID_DISCOVERY; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/UpdateTrustedTokenIssuer>

=head1 ATTRIBUTES


=head2 Name => Str

Specifies the updated name to be applied to the trusted token issuer
configuration.



=head2 B<REQUIRED> TrustedTokenIssuerArn => Str

Specifies the ARN of the trusted token issuer configuration that you
want to update.



=head2 TrustedTokenIssuerConfiguration => L<Paws::SSOAdmin::TrustedTokenIssuerUpdateConfiguration>

Specifies a structure with settings to apply to the specified trusted
token issuer. The settings that you can provide are determined by the
type of the trusted token issuer that you are updating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTrustedTokenIssuer in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

