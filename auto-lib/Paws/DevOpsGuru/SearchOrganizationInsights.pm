
package Paws::DevOpsGuru::SearchOrganizationInsights;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Filters => (is => 'ro', isa => 'Paws::DevOpsGuru::SearchOrganizationInsightsFilters');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTimeRange => (is => 'ro', isa => 'Paws::DevOpsGuru::StartTimeRange', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchOrganizationInsights');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/organization/insights/search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::SearchOrganizationInsightsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::SearchOrganizationInsights - Arguments for method SearchOrganizationInsights on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchOrganizationInsights on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method SearchOrganizationInsights.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchOrganizationInsights.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $SearchOrganizationInsightsResponse =
      $devops -guru->SearchOrganizationInsights(
      AccountIds => [
        'MyAwsAccountId', ...    # min: 12, max: 12
      ],
      StartTimeRange => {
        FromTime => '1970-01-01T01:00:00',    # OPTIONAL
        ToTime   => '1970-01-01T01:00:00',    # OPTIONAL
      },
      Type    => 'REACTIVE',
      Filters => {
        ResourceCollection => {
          CloudFormation => {
            StackNames => [
              'MyStackName', ...    # min: 1, max: 128
            ],    # OPTIONAL
          },    # OPTIONAL
          Tags => [
            {
              AppBoundaryKey => 'MyAppBoundaryKey',    # min: 1, max: 128
              TagValues      => [
                'MyTagValue', ...                      # max: 256
              ],

            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        ServiceCollection => {
          ServiceNames => [
            'API_GATEWAY',
            ... # values: API_GATEWAY, APPLICATION_ELB, AUTO_SCALING_GROUP, CLOUD_FRONT, DYNAMO_DB, EC2, ECS, EKS, ELASTIC_BEANSTALK, ELASTI_CACHE, ELB, ES, KINESIS, LAMBDA, NAT_GATEWAY, NETWORK_ELB, RDS, REDSHIFT, ROUTE_53, S3, SAGE_MAKER, SNS, SQS, STEP_FUNCTIONS, SWF
          ],    # OPTIONAL
        },    # OPTIONAL
        Severities => [
          'LOW', ...    # values: LOW, MEDIUM, HIGH
        ],    # max: 3; OPTIONAL
        Statuses => [
          'ONGOING', ...    # values: ONGOING, CLOSED
        ],    # max: 2; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyUuidNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $SearchOrganizationInsightsResponse->NextToken;
    my $ProactiveInsights =
      $SearchOrganizationInsightsResponse->ProactiveInsights;
    my $ReactiveInsights =
      $SearchOrganizationInsightsResponse->ReactiveInsights;

    # Returns a L<Paws::DevOpsGuru::SearchOrganizationInsightsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/SearchOrganizationInsights>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

The ID of the Amazon Web Services account.



=head2 Filters => L<Paws::DevOpsGuru::SearchOrganizationInsightsFilters>

A C<SearchOrganizationInsightsFilters> object that is used to set the
severity and status filters on your insight search.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 B<REQUIRED> StartTimeRange => L<Paws::DevOpsGuru::StartTimeRange>





=head2 B<REQUIRED> Type => Str

The type of insights you are searching for (C<REACTIVE> or
C<PROACTIVE>).

Valid values are: C<"REACTIVE">, C<"PROACTIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchOrganizationInsights in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

