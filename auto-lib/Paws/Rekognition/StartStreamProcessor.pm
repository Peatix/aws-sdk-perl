
package Paws::Rekognition::StartStreamProcessor;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has StartSelector => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessingStartSelector');
  has StopSelector => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessingStopSelector');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartStreamProcessor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::StartStreamProcessorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartStreamProcessor - Arguments for method StartStreamProcessor on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartStreamProcessor on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method StartStreamProcessor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartStreamProcessor.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $StartStreamProcessorResponse = $rekognition->StartStreamProcessor(
      Name          => 'MyStreamProcessorName',
      StartSelector => {
        KVSStreamStartSelector => {
          FragmentNumber =>
            'MyKinesisVideoStreamFragmentNumber',   # min: 1, max: 128; OPTIONAL
          ProducerTimestamp => 1,                   # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      StopSelector => {
        MaxDurationInSeconds => 1,    # min: 1, max: 120; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $SessionId = $StartStreamProcessorResponse->SessionId;

    # Returns a L<Paws::Rekognition::StartStreamProcessorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/StartStreamProcessor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the stream processor to start processing.



=head2 StartSelector => L<Paws::Rekognition::StreamProcessingStartSelector>

Specifies the starting point in the Kinesis stream to start processing.
You can use the producer timestamp or the fragment number. If you use
the producer timestamp, you must put the time in milliseconds. For more
information about fragment numbers, see Fragment
(https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_reader_Fragment.html).

This is a required parameter for label detection stream processors and
should not be used to start a face search stream processor.



=head2 StopSelector => L<Paws::Rekognition::StreamProcessingStopSelector>

Specifies when to stop processing the stream. You can specify a maximum
amount of time to process the video.

This is a required parameter for label detection stream processors and
should not be used to start a face search stream processor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartStreamProcessor in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

