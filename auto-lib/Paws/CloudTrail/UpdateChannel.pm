
package Paws::CloudTrail::UpdateChannel;
  use Moose;
  has Channel => (is => 'ro', isa => 'Str', required => 1);
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Destination]');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChannel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::UpdateChannelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::UpdateChannel - Arguments for method UpdateChannel on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChannel on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method UpdateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChannel.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $UpdateChannelResponse = $cloudtrail->UpdateChannel(
      Channel      => 'MyChannelArn',
      Destinations => [
        {
          Location => 'MyLocation',      # min: 3, max: 1024
          Type => 'EVENT_DATA_STORE',    # values: EVENT_DATA_STORE, AWS_SERVICE

        },
        ...
      ],    # OPTIONAL
      Name => 'MyChannelName',    # OPTIONAL
    );

    # Results:
    my $ChannelArn   = $UpdateChannelResponse->ChannelArn;
    my $Destinations = $UpdateChannelResponse->Destinations;
    my $Name         = $UpdateChannelResponse->Name;
    my $Source       = $UpdateChannelResponse->Source;

    # Returns a L<Paws::CloudTrail::UpdateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/UpdateChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Channel => Str

The ARN or ID (the ARN suffix) of the channel that you want to update.



=head2 Destinations => ArrayRef[L<Paws::CloudTrail::Destination>]

The ARNs of event data stores that you want to log events arriving
through the channel.



=head2 Name => Str

Changes the name of the channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChannel in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

