
package Paws::SSOAdmin::DescribeTrustedTokenIssuer;
  use Moose;
  has TrustedTokenIssuerArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedTokenIssuer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::DescribeTrustedTokenIssuerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DescribeTrustedTokenIssuer - Arguments for method DescribeTrustedTokenIssuer on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrustedTokenIssuer on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method DescribeTrustedTokenIssuer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrustedTokenIssuer.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $DescribeTrustedTokenIssuerResponse = $sso->DescribeTrustedTokenIssuer(
      TrustedTokenIssuerArn => 'MyTrustedTokenIssuerArn',

    );

    # Results:
    my $Name = $DescribeTrustedTokenIssuerResponse->Name;
    my $TrustedTokenIssuerArn =
      $DescribeTrustedTokenIssuerResponse->TrustedTokenIssuerArn;
    my $TrustedTokenIssuerConfiguration =
      $DescribeTrustedTokenIssuerResponse->TrustedTokenIssuerConfiguration;
    my $TrustedTokenIssuerType =
      $DescribeTrustedTokenIssuerResponse->TrustedTokenIssuerType;

    # Returns a L<Paws::SSOAdmin::DescribeTrustedTokenIssuerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/DescribeTrustedTokenIssuer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrustedTokenIssuerArn => Str

Specifies the ARN of the trusted token issuer configuration that you
want details about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrustedTokenIssuer in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

