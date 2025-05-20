
package Paws::DevOpsGuru::ListMonitoredResources;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::DevOpsGuru::ListMonitoredResourcesFilters');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMonitoredResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitoredResources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::ListMonitoredResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListMonitoredResources - Arguments for method ListMonitoredResources on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMonitoredResources on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method ListMonitoredResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMonitoredResources.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $ListMonitoredResourcesResponse = $devops -guru->ListMonitoredResources(
      Filters => {
        ResourcePermission =>
          'FULL_PERMISSION',    # values: FULL_PERMISSION, MISSING_PERMISSION
        ResourceTypeFilters => [
          'LOG_GROUPS',
          ... # values: LOG_GROUPS, CLOUDFRONT_DISTRIBUTION, DYNAMODB_TABLE, EC2_NAT_GATEWAY, ECS_CLUSTER, ECS_SERVICE, EKS_CLUSTER, ELASTIC_BEANSTALK_ENVIRONMENT, ELASTIC_LOAD_BALANCER_LOAD_BALANCER, ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER, ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP, ELASTICACHE_CACHE_CLUSTER, ELASTICSEARCH_DOMAIN, KINESIS_STREAM, LAMBDA_FUNCTION, OPEN_SEARCH_SERVICE_DOMAIN, RDS_DB_INSTANCE, RDS_DB_CLUSTER, REDSHIFT_CLUSTER, ROUTE53_HOSTED_ZONE, ROUTE53_HEALTH_CHECK, S3_BUCKET, SAGEMAKER_ENDPOINT, SNS_TOPIC, SQS_QUEUE, STEP_FUNCTIONS_ACTIVITY, STEP_FUNCTIONS_STATE_MACHINE
        ],

      },    # OPTIONAL
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyUuidNextToken',    # OPTIONAL
    );

    # Results:
    my $MonitoredResourceIdentifiers =
      $ListMonitoredResourcesResponse->MonitoredResourceIdentifiers;
    my $NextToken = $ListMonitoredResourcesResponse->NextToken;

    # Returns a L<Paws::DevOpsGuru::ListMonitoredResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/ListMonitoredResources>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::DevOpsGuru::ListMonitoredResourcesFilters>

Filters to determine which monitored resources you want to retrieve.
You can filter by resource type or resource permission status.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMonitoredResources in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

