
package Paws::Connect::DescribeTrafficDistributionGroup;
  use Moose;
  has TrafficDistributionGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TrafficDistributionGroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrafficDistributionGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/traffic-distribution-group/{TrafficDistributionGroupId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DescribeTrafficDistributionGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeTrafficDistributionGroup - Arguments for method DescribeTrafficDistributionGroup on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrafficDistributionGroup on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DescribeTrafficDistributionGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrafficDistributionGroup.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DescribeTrafficDistributionGroupResponse =
      $connect->DescribeTrafficDistributionGroup(
      TrafficDistributionGroupId => 'MyTrafficDistributionGroupIdOrArn',

      );

    # Results:
    my $TrafficDistributionGroup =
      $DescribeTrafficDistributionGroupResponse->TrafficDistributionGroup;

  # Returns a L<Paws::Connect::DescribeTrafficDistributionGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DescribeTrafficDistributionGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrafficDistributionGroupId => Str

The identifier of the traffic distribution group. This can be the ID or
the ARN if the API is being called in the Region where the traffic
distribution group was created. The ARN must be provided if the call is
from the replicated Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrafficDistributionGroup in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

