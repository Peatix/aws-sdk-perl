
package Paws::OpenSearch::ListInstanceTypeDetails;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domainName');
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EngineVersion', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'instanceType');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has RetrieveAZs => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'retrieveAZs');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceTypeDetails');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/instanceTypeDetails/{EngineVersion}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::ListInstanceTypeDetailsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListInstanceTypeDetails - Arguments for method ListInstanceTypeDetails on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInstanceTypeDetails on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method ListInstanceTypeDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInstanceTypeDetails.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $ListInstanceTypeDetailsResponse = $es->ListInstanceTypeDetails(
      EngineVersion => 'MyVersionString',
      DomainName    => 'MyDomainName',            # OPTIONAL
      InstanceType  => 'MyInstanceTypeString',    # OPTIONAL
      MaxResults    => 1,                         # OPTIONAL
      NextToken     => 'MyNextToken',             # OPTIONAL
      RetrieveAZs   => 1,                         # OPTIONAL
    );

    # Results:
    my $InstanceTypeDetails =
      $ListInstanceTypeDetailsResponse->InstanceTypeDetails;
    my $NextToken = $ListInstanceTypeDetailsResponse->NextToken;

    # Returns a L<Paws::OpenSearch::ListInstanceTypeDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 DomainName => Str

The name of the domain.



=head2 B<REQUIRED> EngineVersion => Str

The version of OpenSearch or Elasticsearch, in the format
Elasticsearch_X.Y or OpenSearch_X.Y. Defaults to the latest version of
OpenSearch.



=head2 InstanceType => Str

An optional parameter that lists information for a given instance type.



=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to get the next page of results.



=head2 NextToken => Str

If your initial C<ListInstanceTypeDetails> operation returns a
C<nextToken>, you can include the returned C<nextToken> in subsequent
C<ListInstanceTypeDetails> operations, which returns results in the
next page.



=head2 RetrieveAZs => Bool

An optional parameter that specifies the Availability Zones for the
domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInstanceTypeDetails in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

