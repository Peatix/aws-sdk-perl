
package Paws::ChimeSDKMessaging::ListChannelMemberships;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has SubChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sub-channel-id');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChannelMemberships');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/memberships');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::ListChannelMembershipsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ListChannelMemberships - Arguments for method ListChannelMemberships on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChannelMemberships on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method ListChannelMemberships.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChannelMemberships.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $ListChannelMembershipsResponse =
      $messaging -chime->ListChannelMemberships(
      ChannelArn   => 'MyChimeArn',
      ChimeBearer  => 'MyChimeArn',
      MaxResults   => 1,                   # OPTIONAL
      NextToken    => 'MyNextToken',       # OPTIONAL
      SubChannelId => 'MySubChannelId',    # OPTIONAL
      Type         => 'DEFAULT',           # OPTIONAL
      );

    # Results:
    my $ChannelArn = $ListChannelMembershipsResponse->ChannelArn;
    my $ChannelMemberships =
      $ListChannelMembershipsResponse->ChannelMemberships;
    my $NextToken = $ListChannelMembershipsResponse->NextToken;

  # Returns a L<Paws::ChimeSDKMessaging::ListChannelMembershipsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/ListChannelMemberships>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The maximum number of channel memberships that you want returned.



=head2 B<REQUIRED> ChimeBearer => Str

The ARN of the C<AppInstanceUser> or C<AppInstanceBot> that makes the
API call.



=head2 MaxResults => Int

The maximum number of channel memberships that you want returned.



=head2 NextToken => Str

The token passed by previous API calls until all requested channel
memberships are returned.



=head2 SubChannelId => Str

The ID of the SubChannel in the request.

Only required when listing a user's memberships in a particular
sub-channel of an elastic channel.



=head2 Type => Str

The membership type of a user, C<DEFAULT> or C<HIDDEN>. Default members
are returned as part of C<ListChannelMemberships> if no type is
specified. Hidden members are only returned if the type filter in
C<ListChannelMemberships> equals C<HIDDEN>.

Valid values are: C<"DEFAULT">, C<"HIDDEN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChannelMemberships in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

