
package Paws::XRay::UpdateTraceSegmentDestination;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTraceSegmentDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateTraceSegmentDestination');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::UpdateTraceSegmentDestinationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::UpdateTraceSegmentDestination - Arguments for method UpdateTraceSegmentDestination on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTraceSegmentDestination on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method UpdateTraceSegmentDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTraceSegmentDestination.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $UpdateTraceSegmentDestinationResult =
      $xray->UpdateTraceSegmentDestination(
      Destination => 'XRay',    # OPTIONAL
      );

    # Results:
    my $Destination = $UpdateTraceSegmentDestinationResult->Destination;
    my $Status      = $UpdateTraceSegmentDestinationResult->Status;

    # Returns a L<Paws::XRay::UpdateTraceSegmentDestinationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/UpdateTraceSegmentDestination>

=head1 ATTRIBUTES


=head2 Destination => Str

The configured destination of trace segments.

Valid values are: C<"XRay">, C<"CloudWatchLogs">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTraceSegmentDestination in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

