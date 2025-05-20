
package Paws::KinesisVideo::UpdateNotificationConfiguration;
  use Moose;
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::KinesisVideo::NotificationConfiguration');
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNotificationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateNotificationConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::UpdateNotificationConfigurationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::UpdateNotificationConfiguration - Arguments for method UpdateNotificationConfiguration on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNotificationConfiguration on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method UpdateNotificationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNotificationConfiguration.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $UpdateNotificationConfigurationOutput =
      $kinesisvideo->UpdateNotificationConfiguration(
      NotificationConfiguration => {
        DestinationConfig => {
          Uri => 'MyDestinationUri',    # min: 1, max: 255

        },
        Status => 'ENABLED',            # values: ENABLED, DISABLED

      },    # OPTIONAL
      StreamARN  => 'MyResourceARN',    # OPTIONAL
      StreamName => 'MyStreamName',     # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/UpdateNotificationConfiguration>

=head1 ATTRIBUTES


=head2 NotificationConfiguration => L<Paws::KinesisVideo::NotificationConfiguration>

The structure containing the information required for notifications. If
the structure is null, the configuration will be deleted from the
stream.



=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the Kinesis video stream from where
you want to update the notification configuration. You must specify
either the C<StreamName> or the C<StreamARN>.



=head2 StreamName => Str

The name of the stream from which to update the notification
configuration. You must specify either the C<StreamName> or the
C<StreamARN>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNotificationConfiguration in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

