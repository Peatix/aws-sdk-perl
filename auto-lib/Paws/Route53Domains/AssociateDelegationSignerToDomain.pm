
package Paws::Route53Domains::AssociateDelegationSignerToDomain;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has SigningAttributes => (is => 'ro', isa => 'Paws::Route53Domains::DnssecSigningAttributes', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateDelegationSignerToDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::AssociateDelegationSignerToDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::AssociateDelegationSignerToDomain - Arguments for method AssociateDelegationSignerToDomain on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateDelegationSignerToDomain on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method AssociateDelegationSignerToDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateDelegationSignerToDomain.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $AssociateDelegationSignerToDomainResponse =
      $route53domains->AssociateDelegationSignerToDomain(
      DomainName        => 'MyDomainName',
      SigningAttributes => {
        Algorithm => 1,                      # OPTIONAL
        Flags     => 1,                      # OPTIONAL
        PublicKey => 'MyDnssecPublicKey',    # max: 32768; OPTIONAL
      },

      );

    # Results:
    my $OperationId = $AssociateDelegationSignerToDomainResponse->OperationId;

# Returns a L<Paws::Route53Domains::AssociateDelegationSignerToDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/AssociateDelegationSignerToDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the domain.



=head2 B<REQUIRED> SigningAttributes => L<Paws::Route53Domains::DnssecSigningAttributes>

The information about a key, including the algorithm, public key-value,
and flags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateDelegationSignerToDomain in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

