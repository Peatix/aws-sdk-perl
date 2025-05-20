
package Paws::Bedrock::ListProvisionedModelThroughputs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creationTimeAfter');
  has CreationTimeBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creationTimeBefore');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has ModelArnEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'modelArnEquals');
  has NameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameContains');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');
  has StatusEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'statusEquals');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProvisionedModelThroughputs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioned-model-throughputs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::ListProvisionedModelThroughputsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListProvisionedModelThroughputs - Arguments for method ListProvisionedModelThroughputs on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProvisionedModelThroughputs on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method ListProvisionedModelThroughputs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProvisionedModelThroughputs.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $ListProvisionedModelThroughputsResponse =
      $bedrock->ListProvisionedModelThroughputs(
      CreationTimeAfter  => '1970-01-01T01:00:00',       # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',       # OPTIONAL
      MaxResults         => 1,                           # OPTIONAL
      ModelArnEquals     => 'MyModelArn',                # OPTIONAL
      NameContains       => 'MyProvisionedModelName',    # OPTIONAL
      NextToken          => 'MyPaginationToken',         # OPTIONAL
      SortBy             => 'CreationTime',              # OPTIONAL
      SortOrder          => 'Ascending',                 # OPTIONAL
      StatusEquals       => 'Creating',                  # OPTIONAL
      );

    # Results:
    my $NextToken = $ListProvisionedModelThroughputsResponse->NextToken;
    my $ProvisionedModelSummaries =
      $ListProvisionedModelThroughputsResponse->ProvisionedModelSummaries;

   # Returns a L<Paws::Bedrock::ListProvisionedModelThroughputsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/ListProvisionedModelThroughputs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns Provisioned Throughputs created after the
specified time.



=head2 CreationTimeBefore => Str

A filter that returns Provisioned Throughputs created before the
specified time.



=head2 MaxResults => Int

THe maximum number of results to return in the response. If there are
more results than the number you specified, the response returns a
C<nextToken> value. To see the next batch of results, send the
C<nextToken> value in another list request.



=head2 ModelArnEquals => Str

A filter that returns Provisioned Throughputs whose model Amazon
Resource Name (ARN) is equal to the value that you specify.



=head2 NameContains => Str

A filter that returns Provisioned Throughputs if their name contains
the expression that you specify.



=head2 NextToken => Str

If there are more results than the number you specified in the
C<maxResults> field, the response returns a C<nextToken> value. To see
the next batch of results, specify the C<nextToken> value in this
field.



=head2 SortBy => Str

The field by which to sort the returned list of Provisioned
Throughputs.

Valid values are: C<"CreationTime">

=head2 SortOrder => Str

The sort order of the results.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

A filter that returns Provisioned Throughputs if their statuses matches
the value that you specify.

Valid values are: C<"Creating">, C<"InService">, C<"Updating">, C<"Failed">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProvisionedModelThroughputs in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

