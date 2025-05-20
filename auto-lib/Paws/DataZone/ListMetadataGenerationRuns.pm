
package Paws::DataZone::ListMetadataGenerationRuns;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMetadataGenerationRuns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/metadata-generation-runs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListMetadataGenerationRunsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListMetadataGenerationRuns - Arguments for method ListMetadataGenerationRuns on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMetadataGenerationRuns on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListMetadataGenerationRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMetadataGenerationRuns.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListMetadataGenerationRunsOutput =
      $datazone->ListMetadataGenerationRuns(
      DomainIdentifier => 'MyDomainId',
      MaxResults       => 1,                          # OPTIONAL
      NextToken        => 'MyPaginationToken',        # OPTIONAL
      Status           => 'SUBMITTED',                # OPTIONAL
      Type             => 'BUSINESS_DESCRIPTIONS',    # OPTIONAL
      );

    # Results:
    my $Items     = $ListMetadataGenerationRunsOutput->Items;
    my $NextToken = $ListMetadataGenerationRunsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListMetadataGenerationRunsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListMetadataGenerationRuns>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain where you want to list metadata
generation runs.



=head2 MaxResults => Int

The maximum number of metadata generation runs to return in a single
call to ListMetadataGenerationRuns. When the number of metadata
generation runs to be listed is greater than the value of MaxResults,
the response contains a NextToken value that you can use in a
subsequent call to ListMetadataGenerationRuns to list the next set of
revisions.



=head2 NextToken => Str

When the number of metadata generation runs is greater than the default
value for the MaxResults parameter, or if you explicitly specify a
value for MaxResults that is less than the number of metadata
generation runs, the response includes a pagination token named
NextToken. You can specify this NextToken value in a subsequent call to
ListMetadataGenerationRuns to list the next set of revisions.



=head2 Status => Str

The status of the metadata generation runs.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"CANCELED">, C<"SUCCEEDED">, C<"FAILED">

=head2 Type => Str

The type of the metadata generation runs.

Valid values are: C<"BUSINESS_DESCRIPTIONS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMetadataGenerationRuns in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

