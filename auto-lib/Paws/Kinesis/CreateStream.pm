
package Paws::Kinesis::CreateStream;
  use Moose;
  has ShardCount => (is => 'ro', isa => 'Int');
  has StreamModeDetails => (is => 'ro', isa => 'Paws::Kinesis::StreamModeDetails');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Kinesis::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::CreateStream - Arguments for method CreateStream on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStream on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method CreateStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStream.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    $kinesis->CreateStream(
      StreamName        => 'MyStreamName',
      ShardCount        => 1,                # OPTIONAL
      StreamModeDetails => {
        StreamMode => 'PROVISIONED',         # values: PROVISIONED, ON_DEMAND

      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/CreateStream>

=head1 ATTRIBUTES


=head2 ShardCount => Int

The number of shards that the stream will use. The throughput of the
stream is a function of the number of shards; more shards are required
for greater provisioned throughput.



=head2 StreamModeDetails => L<Paws::Kinesis::StreamModeDetails>

Indicates the capacity mode of the data stream. Currently, in Kinesis
Data Streams, you can choose between an B<on-demand> capacity mode and
a B<provisioned> capacity mode for your data streams.



=head2 B<REQUIRED> StreamName => Str

A name to identify the stream. The stream name is scoped to the Amazon
Web Services account used by the application that creates the stream.
It is also scoped by Amazon Web Services Region. That is, two streams
in two different Amazon Web Services accounts can have the same name.
Two streams in the same Amazon Web Services account but in two
different Regions can also have the same name.



=head2 Tags => L<Paws::Kinesis::TagMap>

A set of up to 50 key-value pairs to use to create the tags. A tag
consists of a required key and an optional value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStream in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

