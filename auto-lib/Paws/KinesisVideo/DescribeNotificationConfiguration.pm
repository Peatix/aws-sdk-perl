
package Paws::KinesisVideo::DescribeNotificationConfiguration;
  use Moose;
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNotificationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeNotificationConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::DescribeNotificationConfigurationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DescribeNotificationConfiguration - Arguments for method DescribeNotificationConfiguration on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNotificationConfiguration on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method DescribeNotificationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNotificationConfiguration.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $DescribeNotificationConfigurationOutput =
      $kinesisvideo->DescribeNotificationConfiguration(
      StreamARN  => 'MyResourceARN',    # OPTIONAL
      StreamName => 'MyStreamName',     # OPTIONAL
      );

    # Results:
    my $NotificationConfiguration =
      $DescribeNotificationConfigurationOutput->NotificationConfiguration;

# Returns a L<Paws::KinesisVideo::DescribeNotificationConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/DescribeNotificationConfiguration>

=head1 ATTRIBUTES


=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the Kinesis video stream from where
you want to retrieve the notification configuration. You must specify
either the C<StreamName> or the StreamARN.



=head2 StreamName => Str

The name of the stream from which to retrieve the notification
configuration. You must specify either the C<StreamName> or the
C<StreamARN>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNotificationConfiguration in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

