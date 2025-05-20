
package Paws::KinesisVideo::DescribeMediaStorageConfiguration;
  use Moose;
  has ChannelARN => (is => 'ro', isa => 'Str');
  has ChannelName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMediaStorageConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeMediaStorageConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::DescribeMediaStorageConfigurationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DescribeMediaStorageConfiguration - Arguments for method DescribeMediaStorageConfiguration on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMediaStorageConfiguration on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method DescribeMediaStorageConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMediaStorageConfiguration.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $DescribeMediaStorageConfigurationOutput =
      $kinesisvideo->DescribeMediaStorageConfiguration(
      ChannelARN  => 'MyResourceARN',    # OPTIONAL
      ChannelName => 'MyChannelName',    # OPTIONAL
      );

    # Results:
    my $MediaStorageConfiguration =
      $DescribeMediaStorageConfigurationOutput->MediaStorageConfiguration;

# Returns a L<Paws::KinesisVideo::DescribeMediaStorageConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/DescribeMediaStorageConfiguration>

=head1 ATTRIBUTES


=head2 ChannelARN => Str

The Amazon Resource Name (ARN) of the channel.



=head2 ChannelName => Str

The name of the channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMediaStorageConfiguration in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

