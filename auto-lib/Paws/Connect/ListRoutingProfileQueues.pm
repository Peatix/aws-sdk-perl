
package Paws::Connect::ListRoutingProfileQueues;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has RoutingProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RoutingProfileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRoutingProfileQueues');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/routing-profiles/{InstanceId}/{RoutingProfileId}/queues');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListRoutingProfileQueuesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListRoutingProfileQueues - Arguments for method ListRoutingProfileQueues on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRoutingProfileQueues on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListRoutingProfileQueues.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRoutingProfileQueues.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListRoutingProfileQueuesResponse = $connect->ListRoutingProfileQueues(
      InstanceId       => 'MyInstanceId',
      RoutingProfileId => 'MyRoutingProfileId',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $LastModifiedRegion =
      $ListRoutingProfileQueuesResponse->LastModifiedRegion;
    my $LastModifiedTime = $ListRoutingProfileQueuesResponse->LastModifiedTime;
    my $NextToken        = $ListRoutingProfileQueuesResponse->NextToken;
    my $RoutingProfileQueueConfigSummaryList =
      $ListRoutingProfileQueuesResponse->RoutingProfileQueueConfigSummaryList;

    # Returns a L<Paws::Connect::ListRoutingProfileQueuesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListRoutingProfileQueues>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page. The default MaxResult
size is 100.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> RoutingProfileId => Str

The identifier of the routing profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRoutingProfileQueues in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

