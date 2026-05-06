
package Paws::OpenSearch::GetCompatibleVersions;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domainName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCompatibleVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/compatibleVersions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::GetCompatibleVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::GetCompatibleVersions - Arguments for method GetCompatibleVersions on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCompatibleVersions on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method GetCompatibleVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCompatibleVersions.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $GetCompatibleVersionsResponse = $es->GetCompatibleVersions(
      DomainName => 'MyDomainName',    # OPTIONAL
    );

    # Results:
    my $CompatibleVersions = $GetCompatibleVersionsResponse->CompatibleVersions;

    # Returns a L<Paws::OpenSearch::GetCompatibleVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 DomainName => Str

The name of an existing domain. Provide this parameter to limit the
results to a single domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCompatibleVersions in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

