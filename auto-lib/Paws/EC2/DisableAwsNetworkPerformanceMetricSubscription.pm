
package Paws::EC2::DisableAwsNetworkPerformanceMetricSubscription;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Metric => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
  has Statistic => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableAwsNetworkPerformanceMetricSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DisableAwsNetworkPerformanceMetricSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableAwsNetworkPerformanceMetricSubscription - Arguments for method DisableAwsNetworkPerformanceMetricSubscription on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableAwsNetworkPerformanceMetricSubscription on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DisableAwsNetworkPerformanceMetricSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableAwsNetworkPerformanceMetricSubscription.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DisableAwsNetworkPerformanceMetricSubscriptionResult =
      $ec2->DisableAwsNetworkPerformanceMetricSubscription(
      Destination => 'MyString',             # OPTIONAL
      DryRun      => 1,                      # OPTIONAL
      Metric      => 'aggregate-latency',    # OPTIONAL
      Source      => 'MyString',             # OPTIONAL
      Statistic   => 'p50',                  # OPTIONAL
      );

    # Results:
    my $Output = $DisableAwsNetworkPerformanceMetricSubscriptionResult->Output;

# Returns a L<Paws::EC2::DisableAwsNetworkPerformanceMetricSubscriptionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DisableAwsNetworkPerformanceMetricSubscription>

=head1 ATTRIBUTES


=head2 Destination => Str

The target Region or Availability Zone that the metric subscription is
disabled for. For example, C<eu-north-1>.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Metric => Str

The metric used for the disabled subscription.

Valid values are: C<"aggregate-latency">

=head2 Source => Str

The source Region or Availability Zone that the metric subscription is
disabled for. For example, C<us-east-1>.



=head2 Statistic => Str

The statistic used for the disabled subscription.

Valid values are: C<"p50">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableAwsNetworkPerformanceMetricSubscription in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

