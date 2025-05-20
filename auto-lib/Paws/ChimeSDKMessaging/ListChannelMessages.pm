
package Paws::ChimeSDKMessaging::ListChannelMessages;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has NotAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'not-after');
  has NotBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'not-before');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sort-order');
  has SubChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sub-channel-id');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChannelMessages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/messages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::ListChannelMessagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ListChannelMessages - Arguments for method ListChannelMessages on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChannelMessages on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method ListChannelMessages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChannelMessages.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $ListChannelMessagesResponse = $messaging -chime->ListChannelMessages(
      ChannelArn   => 'MyChimeArn',
      ChimeBearer  => 'MyChimeArn',
      MaxResults   => 1,                        # OPTIONAL
      NextToken    => 'MyNextToken',            # OPTIONAL
      NotAfter     => '1970-01-01T01:00:00',    # OPTIONAL
      NotBefore    => '1970-01-01T01:00:00',    # OPTIONAL
      SortOrder    => 'ASCENDING',              # OPTIONAL
      SubChannelId => 'MySubChannelId',         # OPTIONAL
    );

    # Results:
    my $ChannelArn      = $ListChannelMessagesResponse->ChannelArn;
    my $ChannelMessages = $ListChannelMessagesResponse->ChannelMessages;
    my $NextToken       = $ListChannelMessagesResponse->NextToken;
    my $SubChannelId    = $ListChannelMessagesResponse->SubChannelId;

    # Returns a L<Paws::ChimeSDKMessaging::ListChannelMessagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/ListChannelMessages>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel.



=head2 B<REQUIRED> ChimeBearer => Str

The ARN of the C<AppInstanceUser> or C<AppInstanceBot> that makes the
API call.



=head2 MaxResults => Int

The maximum number of messages that you want returned.



=head2 NextToken => Str

The token passed by previous API calls until all requested messages are
returned.



=head2 NotAfter => Str

The final or ending time stamp for your requested messages.



=head2 NotBefore => Str

The initial or starting time stamp for your requested messages.



=head2 SortOrder => Str

The order in which you want messages sorted. Default is Descending,
based on time created.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 SubChannelId => Str

The ID of the SubChannel in the request.

Only required when listing the messages in a SubChannel that the user
belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChannelMessages in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

