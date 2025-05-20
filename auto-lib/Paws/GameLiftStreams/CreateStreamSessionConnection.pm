
package Paws::GameLiftStreams::CreateStreamSessionConnection;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has SignalRequest => (is => 'ro', isa => 'Str', required => 1);
  has StreamSessionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'StreamSessionIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamSessionConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/connections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::CreateStreamSessionConnectionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::CreateStreamSessionConnection - Arguments for method CreateStreamSessionConnection on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStreamSessionConnection on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method CreateStreamSessionConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStreamSessionConnection.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $CreateStreamSessionConnectionOutput =
      $gameliftstreams->CreateStreamSessionConnection(
      Identifier              => 'MyIdentifier',
      SignalRequest           => 'MySignalRequest',
      StreamSessionIdentifier => 'MyIdentifier',
      ClientToken             => 'MyClientToken',     # OPTIONAL
      );

    # Results:
    my $SignalResponse = $CreateStreamSessionConnectionOutput->SignalResponse;

# Returns a L<Paws::GameLiftStreams::CreateStreamSessionConnectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/CreateStreamSessionConnection>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique identifier that represents a client request. The request is
idempotent, which ensures that an API request completes only once. When
users send a request, Amazon GameLift Streams automatically populates
this field.



=head2 B<REQUIRED> Identifier => Str

Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the stream group resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:streamgroup/sg-1AB2C3De4>
or ID-C<sg-1AB2C3De4>.

The stream group that you want to run this stream session with. The
stream group must be in C<ACTIVE> status and have idle stream capacity.



=head2 B<REQUIRED> SignalRequest => Str

A WebRTC ICE offer string to use when initializing a WebRTC connection.
The offer is a very long JSON string. Provide the string as a text
value in quotes. The offer must be newly generated, not the same offer
provided to C<StartStreamSession>.



=head2 B<REQUIRED> StreamSessionIdentifier => Str

Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
that uniquely identifies the stream session resource. Format example:
C<1AB2C3De4>. The stream session must be in
C<PENDING_CLIENT_RECONNECTION> or C<ACTIVE> status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStreamSessionConnection in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

