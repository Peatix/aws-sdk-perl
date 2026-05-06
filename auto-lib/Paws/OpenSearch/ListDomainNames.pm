
package Paws::OpenSearch::ListDomainNames;
  use Moose;
  has EngineType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'engineType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomainNames');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/domain');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::ListDomainNamesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListDomainNames - Arguments for method ListDomainNames on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDomainNames on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method ListDomainNames.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDomainNames.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $ListDomainNamesResponse = $es->ListDomainNames(
      EngineType => 'OpenSearch',    # OPTIONAL
    );

    # Results:
    my $DomainNames = $ListDomainNamesResponse->DomainNames;

    # Returns a L<Paws::OpenSearch::ListDomainNamesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 EngineType => Str

Filters the output by domain engine type.

Valid values are: C<"OpenSearch">, C<"Elasticsearch">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDomainNames in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

