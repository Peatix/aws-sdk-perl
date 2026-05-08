
package Paws::OpenSearch::DescribeDomainConfig;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomainConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/domain/{DomainName}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::DescribeDomainConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeDomainConfig - Arguments for method DescribeDomainConfig on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDomainConfig on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method DescribeDomainConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDomainConfig.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $DescribeDomainConfigResponse = $es->DescribeDomainConfig(
      DomainName => 'MyDomainName',

    );

    # Results:
    my $DomainConfig = $DescribeDomainConfigResponse->DomainConfig;

    # Returns a L<Paws::OpenSearch::DescribeDomainConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

Name of the OpenSearch Service domain configuration that you want to
describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDomainConfig in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

