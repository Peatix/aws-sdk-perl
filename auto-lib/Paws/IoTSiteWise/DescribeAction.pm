
package Paws::IoTSiteWise::DescribeAction;
  use Moose;
  has ActionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'actionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/actions/{actionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAction - Arguments for method DescribeAction on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAction on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAction.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeActionResponse = $iotsitewise->DescribeAction(
      ActionId => 'MyID',

    );

    # Results:
    my $ActionDefinitionId = $DescribeActionResponse->ActionDefinitionId;
    my $ActionId           = $DescribeActionResponse->ActionId;
    my $ActionPayload      = $DescribeActionResponse->ActionPayload;
    my $ExecutionTime      = $DescribeActionResponse->ExecutionTime;
    my $TargetResource     = $DescribeActionResponse->TargetResource;

    # Returns a L<Paws::IoTSiteWise::DescribeActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionId => Str

The ID of the action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAction in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

