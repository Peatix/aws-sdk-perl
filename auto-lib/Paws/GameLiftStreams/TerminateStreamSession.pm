
package Paws::GameLiftStreams::TerminateStreamSession;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has StreamSessionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'StreamSessionIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateStreamSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::TerminateStreamSession - Arguments for method TerminateStreamSession on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateStreamSession on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method TerminateStreamSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateStreamSession.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    $gameliftstreams->TerminateStreamSession(
      Identifier              => 'MyIdentifier',
      StreamSessionIdentifier => 'MyIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/TerminateStreamSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
or ID that uniquely identifies the stream group resource. Format
example:
ARN-C<arn:aws:gameliftstreams:us-west-2:123456789012:streamgroup/sg-1AB2C3De4>
or ID-C<sg-1AB2C3De4>.

The stream group that runs this stream session.



=head2 B<REQUIRED> StreamSessionIdentifier => Str

Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
that uniquely identifies the stream session resource. Format example:
C<1AB2C3De4>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateStreamSession in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

