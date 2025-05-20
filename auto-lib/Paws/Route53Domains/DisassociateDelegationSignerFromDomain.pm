
package Paws::Route53Domains::DisassociateDelegationSignerFromDomain;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateDelegationSignerFromDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::DisassociateDelegationSignerFromDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::DisassociateDelegationSignerFromDomain - Arguments for method DisassociateDelegationSignerFromDomain on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateDelegationSignerFromDomain on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method DisassociateDelegationSignerFromDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateDelegationSignerFromDomain.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $DisassociateDelegationSignerFromDomainResponse =
      $route53domains->DisassociateDelegationSignerFromDomain(
      DomainName => 'MyDomainName',
      Id         => 'MyString',

      );

    # Results:
    my $OperationId =
      $DisassociateDelegationSignerFromDomainResponse->OperationId;

# Returns a L<Paws::Route53Domains::DisassociateDelegationSignerFromDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/DisassociateDelegationSignerFromDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

Name of the domain.



=head2 B<REQUIRED> Id => Str

An internal identification number assigned to each DS record after
itE<rsquo>s created. You can retrieve it as part of DNSSEC information
returned by GetDomainDetail
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetDomainDetail.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateDelegationSignerFromDomain in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

