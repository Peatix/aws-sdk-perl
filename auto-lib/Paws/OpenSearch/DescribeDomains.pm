
package Paws::OpenSearch::DescribeDomains;
  use Moose;
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomains');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/domain-info');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::DescribeDomainsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeDomains - Arguments for method DescribeDomains on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDomains on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method DescribeDomains.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDomains.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $DescribeDomainsResponse = $es->DescribeDomains(
      DomainNames => [
        'MyDomainName', ...    # min: 3, max: 28
      ],

    );

    # Results:
    my $DomainStatusList = $DescribeDomainsResponse->DomainStatusList;

    # Returns a L<Paws::OpenSearch::DescribeDomainsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainNames => ArrayRef[Str|Undef]

Array of OpenSearch Service domain names that you want information
about. You must specify at least one domain name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDomains in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

