
package Paws::Bedrock::ListCustomModels;
  use Moose;
  has BaseModelArnEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'baseModelArnEquals');
  has CreationTimeAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creationTimeAfter');
  has CreationTimeBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creationTimeBefore');
  has FoundationModelArnEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'foundationModelArnEquals');
  has IsOwned => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'isOwned');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameContains');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCustomModels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/custom-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::ListCustomModelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListCustomModels - Arguments for method ListCustomModels on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCustomModels on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method ListCustomModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCustomModels.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $ListCustomModelsResponse = $bedrock->ListCustomModels(
      BaseModelArnEquals       => 'MyModelArn',              # OPTIONAL
      CreationTimeAfter        => '1970-01-01T01:00:00',     # OPTIONAL
      CreationTimeBefore       => '1970-01-01T01:00:00',     # OPTIONAL
      FoundationModelArnEquals => 'MyFoundationModelArn',    # OPTIONAL
      IsOwned                  => 1,                         # OPTIONAL
      MaxResults               => 1,                         # OPTIONAL
      NameContains             => 'MyCustomModelName',       # OPTIONAL
      NextToken                => 'MyPaginationToken',       # OPTIONAL
      SortBy                   => 'CreationTime',            # OPTIONAL
      SortOrder                => 'Ascending',               # OPTIONAL
    );

    # Results:
    my $ModelSummaries = $ListCustomModelsResponse->ModelSummaries;
    my $NextToken      = $ListCustomModelsResponse->NextToken;

    # Returns a L<Paws::Bedrock::ListCustomModelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/ListCustomModels>

=head1 ATTRIBUTES


=head2 BaseModelArnEquals => Str

Return custom models only if the base model Amazon Resource Name (ARN)
matches this parameter.



=head2 CreationTimeAfter => Str

Return custom models created after the specified time.



=head2 CreationTimeBefore => Str

Return custom models created before the specified time.



=head2 FoundationModelArnEquals => Str

Return custom models only if the foundation model Amazon Resource Name
(ARN) matches this parameter.



=head2 IsOwned => Bool

Return custom models depending on if the current account owns them
(C<true>) or if they were shared with the current account (C<false>).



=head2 MaxResults => Int

The maximum number of results to return in the response. If the total
number of results is greater than this value, use the token returned in
the response in the C<nextToken> field when making another request to
return the next batch of results.



=head2 NameContains => Str

Return custom models only if the job name contains these characters.



=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, enter the token returned in the C<nextToken>
field in the response in this field to return the next batch of
results.



=head2 SortBy => Str

The field to sort by in the returned list of models.

Valid values are: C<"CreationTime">

=head2 SortOrder => Str

The sort order of the results.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCustomModels in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

