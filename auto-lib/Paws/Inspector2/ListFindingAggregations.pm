
package Paws::Inspector2::ListFindingAggregations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::StringFilter]', traits => ['NameInRequest'], request_name => 'accountIds');
  has AggregationRequest => (is => 'ro', isa => 'Paws::Inspector2::AggregationRequest', traits => ['NameInRequest'], request_name => 'aggregationRequest');
  has AggregationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationType', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFindingAggregations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings/aggregation/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::ListFindingAggregationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListFindingAggregations - Arguments for method ListFindingAggregations on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFindingAggregations on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method ListFindingAggregations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFindingAggregations.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $ListFindingAggregationsResponse = $inspector2->ListFindingAggregations(
      AggregationType => 'FINDING_TYPE',
      AccountIds      => [
        {
          Comparison => 'EQUALS',           # values: EQUALS, PREFIX, NOT_EQUALS
          Value      => 'MyStringInput',    # min: 1, max: 1024

        },
        ...
      ],    # OPTIONAL
      AggregationRequest => {
        AccountAggregation => {
          FindingType => 'NETWORK_REACHABILITY'
          , # values: NETWORK_REACHABILITY, PACKAGE_VULNERABILITY, CODE_VULNERABILITY; OPTIONAL
          ResourceType => 'AWS_EC2_INSTANCE'
          , # values: AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_LAMBDA_FUNCTION; OPTIONAL
          SortBy    => 'CRITICAL',    # values: CRITICAL, HIGH, ALL; OPTIONAL
          SortOrder => 'ASC',         # values: ASC, DESC; OPTIONAL
        },    # OPTIONAL
        AmiAggregation => {
          Amis => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          SortBy => 'CRITICAL'
          ,     # values: CRITICAL, HIGH, ALL, AFFECTED_INSTANCES; OPTIONAL
          SortOrder => 'ASC',    # values: ASC, DESC; OPTIONAL
        },    # OPTIONAL
        AwsEcrContainerAggregation => {
          Architectures => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          ImageShas => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          ImageTags => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          Repositories => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          ResourceIds => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          SortBy    => 'CRITICAL',    # values: CRITICAL, HIGH, ALL; OPTIONAL
          SortOrder => 'ASC',         # values: ASC, DESC; OPTIONAL
        },    # OPTIONAL
        Ec2InstanceAggregation => {
          Amis => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          InstanceIds => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          InstanceTags => [
            {
              Comparison => 'EQUALS',        # values: EQUALS
              Key        => 'MyMapKey',      # min: 1, max: 128
              Value      => 'MyMapValue',    # max: 256; OPTIONAL
            },
            ...
          ],    # min: 1, max: 10; OPTIONAL
          OperatingSystems => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          SortBy => 'NETWORK_FINDINGS'
          ,     # values: NETWORK_FINDINGS, CRITICAL, HIGH, ALL; OPTIONAL
          SortOrder => 'ASC',    # values: ASC, DESC; OPTIONAL
        },    # OPTIONAL
        FindingTypeAggregation => {
          FindingType => 'NETWORK_REACHABILITY'
          , # values: NETWORK_REACHABILITY, PACKAGE_VULNERABILITY, CODE_VULNERABILITY; OPTIONAL
          ResourceType => 'AWS_EC2_INSTANCE'
          , # values: AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_LAMBDA_FUNCTION; OPTIONAL
          SortBy    => 'CRITICAL',    # values: CRITICAL, HIGH, ALL; OPTIONAL
          SortOrder => 'ASC',         # values: ASC, DESC; OPTIONAL
        },    # OPTIONAL
        ImageLayerAggregation => {
          LayerHashes => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          Repositories => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          ResourceIds => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          SortBy    => 'CRITICAL',    # values: CRITICAL, HIGH, ALL; OPTIONAL
          SortOrder => 'ASC',         # values: ASC, DESC; OPTIONAL
        },    # OPTIONAL
        LambdaFunctionAggregation => {
          FunctionNames => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          FunctionTags => [
            {
              Comparison => 'EQUALS',        # values: EQUALS
              Key        => 'MyMapKey',      # min: 1, max: 128
              Value      => 'MyMapValue',    # max: 256; OPTIONAL
            },
            ...
          ],    # min: 1, max: 10; OPTIONAL
          ResourceIds => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          Runtimes => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          SortBy    => 'CRITICAL',    # values: CRITICAL, HIGH, ALL; OPTIONAL
          SortOrder => 'ASC',         # values: ASC, DESC; OPTIONAL
        },    # OPTIONAL
        LambdaLayerAggregation => {
          FunctionNames => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          LayerArns => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          ResourceIds => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          SortBy    => 'CRITICAL',    # values: CRITICAL, HIGH, ALL; OPTIONAL
          SortOrder => 'ASC',         # values: ASC, DESC; OPTIONAL
        },    # OPTIONAL
        PackageAggregation => {
          PackageNames => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          SortBy    => 'CRITICAL',    # values: CRITICAL, HIGH, ALL; OPTIONAL
          SortOrder => 'ASC',         # values: ASC, DESC; OPTIONAL
        },    # OPTIONAL
        RepositoryAggregation => {
          Repositories => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          SortBy =>
            'CRITICAL', # values: CRITICAL, HIGH, ALL, AFFECTED_IMAGES; OPTIONAL
          SortOrder => 'ASC',    # values: ASC, DESC; OPTIONAL
        },    # OPTIONAL
        TitleAggregation => {
          FindingType => 'NETWORK_REACHABILITY'
          , # values: NETWORK_REACHABILITY, PACKAGE_VULNERABILITY, CODE_VULNERABILITY; OPTIONAL
          ResourceType => 'AWS_EC2_INSTANCE'
          , # values: AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_LAMBDA_FUNCTION; OPTIONAL
          SortBy    => 'CRITICAL',    # values: CRITICAL, HIGH, ALL; OPTIONAL
          SortOrder => 'ASC',         # values: ASC, DESC; OPTIONAL
          Titles    => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
          VulnerabilityIds => [
            {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            ...
          ],    # min: 1, max: 10
        },    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AggregationType = $ListFindingAggregationsResponse->AggregationType;
    my $NextToken       = $ListFindingAggregationsResponse->NextToken;
    my $Responses       = $ListFindingAggregationsResponse->Responses;

    # Returns a L<Paws::Inspector2::ListFindingAggregationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/ListFindingAggregations>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[L<Paws::Inspector2::StringFilter>]

The Amazon Web Services account IDs to retrieve finding aggregation
data for.



=head2 AggregationRequest => L<Paws::Inspector2::AggregationRequest>

Details of the aggregation request that is used to filter your
aggregation results.



=head2 B<REQUIRED> AggregationType => Str

The type of the aggregation request.

Valid values are: C<"FINDING_TYPE">, C<"PACKAGE">, C<"TITLE">, C<"REPOSITORY">, C<"AMI">, C<"AWS_EC2_INSTANCE">, C<"AWS_ECR_CONTAINER">, C<"IMAGE_LAYER">, C<"ACCOUNT">, C<"AWS_LAMBDA_FUNCTION">, C<"LAMBDA_LAYER">

=head2 MaxResults => Int

The maximum number of results the response can return. If your request
would return more than the maximum the response will return a
C<nextToken> value, use this value when you call the action again to
get the remaining results.



=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. If your response returns more than the C<maxResults>
maximum value it will also return a C<nextToken> value. For subsequent
calls, use the C<nextToken> value returned from the previous request to
continue listing results after the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFindingAggregations in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

