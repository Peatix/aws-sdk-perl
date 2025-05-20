
package Paws::CloudTrail::CreateChannel;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Destination]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Source => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::CreateChannelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::CreateChannel - Arguments for method CreateChannel on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannel on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method CreateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannel.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $CreateChannelResponse = $cloudtrail->CreateChannel(
      Destinations => [
        {
          Location => 'MyLocation',      # min: 3, max: 1024
          Type => 'EVENT_DATA_STORE',    # values: EVENT_DATA_STORE, AWS_SERVICE

        },
        ...
      ],
      Name   => 'MyChannelName',
      Source => 'MySource',
      Tags   => [
        {
          Key   => 'MyTagKey',           # min: 1, max: 128
          Value => 'MyTagValue',         # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ChannelArn   = $CreateChannelResponse->ChannelArn;
    my $Destinations = $CreateChannelResponse->Destinations;
    my $Name         = $CreateChannelResponse->Name;
    my $Source       = $CreateChannelResponse->Source;
    my $Tags         = $CreateChannelResponse->Tags;

    # Returns a L<Paws::CloudTrail::CreateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/CreateChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destinations => ArrayRef[L<Paws::CloudTrail::Destination>]

One or more event data stores to which events arriving through a
channel will be logged.



=head2 B<REQUIRED> Name => Str

The name of the channel.



=head2 B<REQUIRED> Source => Str

The name of the partner or external event source. You cannot change
this name after you create the channel. A maximum of one channel is
allowed per source.

A source can be either C<Custom> for all valid non-Amazon Web Services
events, or the name of a partner event source. For information about
the source names for available partners, see Additional information
about integration partners
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-event-data-store-integration.html#cloudtrail-lake-partner-information)
in the CloudTrail User Guide.



=head2 Tags => ArrayRef[L<Paws::CloudTrail::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannel in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

