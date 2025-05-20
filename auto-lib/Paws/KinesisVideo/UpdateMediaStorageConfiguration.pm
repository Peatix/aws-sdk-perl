
package Paws::KinesisVideo::UpdateMediaStorageConfiguration;
  use Moose;
  has ChannelARN => (is => 'ro', isa => 'Str', required => 1);
  has MediaStorageConfiguration => (is => 'ro', isa => 'Paws::KinesisVideo::MediaStorageConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMediaStorageConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateMediaStorageConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::UpdateMediaStorageConfigurationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::UpdateMediaStorageConfiguration - Arguments for method UpdateMediaStorageConfiguration on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMediaStorageConfiguration on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method UpdateMediaStorageConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMediaStorageConfiguration.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $UpdateMediaStorageConfigurationOutput =
      $kinesisvideo->UpdateMediaStorageConfiguration(
      ChannelARN                => 'MyResourceARN',
      MediaStorageConfiguration => {
        Status    => 'ENABLED',          # values: ENABLED, DISABLED
        StreamARN => 'MyResourceARN',    # min: 1, max: 1024
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/UpdateMediaStorageConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelARN => Str

The Amazon Resource Name (ARN) of the channel.



=head2 B<REQUIRED> MediaStorageConfiguration => L<Paws::KinesisVideo::MediaStorageConfiguration>

A structure that encapsulates, or contains, the media storage
configuration properties.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMediaStorageConfiguration in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

