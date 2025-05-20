
package Paws::Route53Domains::DeleteDomain;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::DeleteDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::DeleteDomain - Arguments for method DeleteDomain on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDomain on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method DeleteDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDomain.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $DeleteDomainResponse = $route53domains->DeleteDomain(
      DomainName => 'MyDomainName',

    );

    # Results:
    my $OperationId = $DeleteDomainResponse->OperationId;

    # Returns a L<Paws::Route53Domains::DeleteDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/DeleteDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

Name of the domain to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDomain in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

