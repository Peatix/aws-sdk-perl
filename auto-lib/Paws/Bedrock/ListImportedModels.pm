
package Paws::Bedrock::ListImportedModels;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creationTimeAfter');
  has CreationTimeBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creationTimeBefore');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameContains');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImportedModels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/imported-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::ListImportedModelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListImportedModels - Arguments for method ListImportedModels on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImportedModels on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method ListImportedModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImportedModels.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $ListImportedModelsResponse = $bedrock->ListImportedModels(
      CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NameContains       => 'MyImportedModelName',    # OPTIONAL
      NextToken          => 'MyPaginationToken',      # OPTIONAL
      SortBy             => 'CreationTime',           # OPTIONAL
      SortOrder          => 'Ascending',              # OPTIONAL
    );

    # Results:
    my $ModelSummaries = $ListImportedModelsResponse->ModelSummaries;
    my $NextToken      = $ListImportedModelsResponse->NextToken;

    # Returns a L<Paws::Bedrock::ListImportedModelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/ListImportedModels>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Return imported models that were created after the specified time.



=head2 CreationTimeBefore => Str

Return imported models that created before the specified time.



=head2 MaxResults => Int

The maximum number of results to return in the response. If the total
number of results is greater than this value, use the token returned in
the response in the C<nextToken> field when making another request to
return the next batch of results.



=head2 NameContains => Str

Return imported models only if the model name contains these
characters.



=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, enter the token returned in the C<nextToken>
field in the response in this field to return the next batch of
results.



=head2 SortBy => Str

The field to sort by in the returned list of imported models.

Valid values are: C<"CreationTime">

=head2 SortOrder => Str

Specifies whetehr to sort the results in ascending or descending order.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImportedModels in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

