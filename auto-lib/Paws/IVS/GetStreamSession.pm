
package Paws::IVS::GetStreamSession;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelArn', required => 1);
  has StreamId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'streamId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStreamSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetStreamSession');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::GetStreamSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::GetStreamSession - Arguments for method GetStreamSession on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStreamSession on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method GetStreamSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStreamSession.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $GetStreamSessionResponse = $ivs->GetStreamSession(
      ChannelArn => 'MyChannelArn',
      StreamId   => 'MyStreamId',     # OPTIONAL
    );

    # Results:
    my $StreamSession = $GetStreamSessionResponse->StreamSession;

    # Returns a L<Paws::IVS::GetStreamSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/GetStreamSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

ARN of the channel resource



=head2 StreamId => Str

Unique identifier for a live or previously live stream in the specified
channel. If no C<streamId> is provided, this returns the most recent
stream session for the channel, if it exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStreamSession in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

