
package Paws::CloudWatchEvents::DescribeEndpoint;
  use Moose;
  has HomeRegion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::DescribeEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeEndpoint - Arguments for method DescribeEndpoint on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEndpoint on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method DescribeEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEndpoint.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $DescribeEndpointResponse = $events->DescribeEndpoint(
      Name       => 'MyEndpointName',
      HomeRegion => 'MyHomeRegion',     # OPTIONAL
    );

    # Results:
    my $Arn               = $DescribeEndpointResponse->Arn;
    my $CreationTime      = $DescribeEndpointResponse->CreationTime;
    my $Description       = $DescribeEndpointResponse->Description;
    my $EndpointId        = $DescribeEndpointResponse->EndpointId;
    my $EndpointUrl       = $DescribeEndpointResponse->EndpointUrl;
    my $EventBuses        = $DescribeEndpointResponse->EventBuses;
    my $LastModifiedTime  = $DescribeEndpointResponse->LastModifiedTime;
    my $Name              = $DescribeEndpointResponse->Name;
    my $ReplicationConfig = $DescribeEndpointResponse->ReplicationConfig;
    my $RoleArn           = $DescribeEndpointResponse->RoleArn;
    my $RoutingConfig     = $DescribeEndpointResponse->RoutingConfig;
    my $State             = $DescribeEndpointResponse->State;
    my $StateReason       = $DescribeEndpointResponse->StateReason;

    # Returns a L<Paws::CloudWatchEvents::DescribeEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 HomeRegion => Str

The primary Region of the endpoint you want to get information about.
For example C<"HomeRegion": "us-east-1">.



=head2 B<REQUIRED> Name => Str

The name of the endpoint you want to get information about. For
example, C<"Name":"us-east-2-custom_bus_A-endpoint">.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEndpoint in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

