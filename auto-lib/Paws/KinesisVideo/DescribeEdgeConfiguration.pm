
package Paws::KinesisVideo::DescribeEdgeConfiguration;
  use Moose;
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEdgeConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeEdgeConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::DescribeEdgeConfigurationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DescribeEdgeConfiguration - Arguments for method DescribeEdgeConfiguration on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEdgeConfiguration on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method DescribeEdgeConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEdgeConfiguration.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $DescribeEdgeConfigurationOutput =
      $kinesisvideo->DescribeEdgeConfiguration(
      StreamARN  => 'MyResourceARN',    # OPTIONAL
      StreamName => 'MyStreamName',     # OPTIONAL
      );

    # Results:
    my $CreationTime    = $DescribeEdgeConfigurationOutput->CreationTime;
    my $EdgeAgentStatus = $DescribeEdgeConfigurationOutput->EdgeAgentStatus;
    my $EdgeConfig      = $DescribeEdgeConfigurationOutput->EdgeConfig;
    my $FailedStatusDetails =
      $DescribeEdgeConfigurationOutput->FailedStatusDetails;
    my $LastUpdatedTime = $DescribeEdgeConfigurationOutput->LastUpdatedTime;
    my $StreamARN       = $DescribeEdgeConfigurationOutput->StreamARN;
    my $StreamName      = $DescribeEdgeConfigurationOutput->StreamName;
    my $SyncStatus      = $DescribeEdgeConfigurationOutput->SyncStatus;

    # Returns a L<Paws::KinesisVideo::DescribeEdgeConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/DescribeEdgeConfiguration>

=head1 ATTRIBUTES


=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream. Specify either the
C<StreamName>or the C<StreamARN>.



=head2 StreamName => Str

The name of the stream whose edge configuration you want to update.
Specify either the C<StreamName> or the C<StreamARN>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEdgeConfiguration in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

