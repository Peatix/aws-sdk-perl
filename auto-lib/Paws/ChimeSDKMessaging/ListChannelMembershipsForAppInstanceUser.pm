
package Paws::ChimeSDKMessaging::ListChannelMembershipsForAppInstanceUser;
  use Moose;
  has AppInstanceUserArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'app-instance-user-arn');
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChannelMembershipsForAppInstanceUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels?scope=app-instance-user-memberships');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::ListChannelMembershipsForAppInstanceUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ListChannelMembershipsForAppInstanceUser - Arguments for method ListChannelMembershipsForAppInstanceUser on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChannelMembershipsForAppInstanceUser on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method ListChannelMembershipsForAppInstanceUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChannelMembershipsForAppInstanceUser.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $ListChannelMembershipsForAppInstanceUserResponse =
      $messaging -chime->ListChannelMembershipsForAppInstanceUser(
      ChimeBearer        => 'MyChimeArn',
      AppInstanceUserArn => 'MyChimeArn',     # OPTIONAL
      MaxResults         => 1,                # OPTIONAL
      NextToken          => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $ChannelMemberships =
      $ListChannelMembershipsForAppInstanceUserResponse->ChannelMemberships;
    my $NextToken =
      $ListChannelMembershipsForAppInstanceUserResponse->NextToken;

# Returns a L<Paws::ChimeSDKMessaging::ListChannelMembershipsForAppInstanceUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/ListChannelMembershipsForAppInstanceUser>

=head1 ATTRIBUTES


=head2 AppInstanceUserArn => Str

The ARN of the user or bot.



=head2 B<REQUIRED> ChimeBearer => Str

The ARN of the C<AppInstanceUser> or C<AppInstanceBot> that makes the
API call.



=head2 MaxResults => Int

The maximum number of users that you want returned.



=head2 NextToken => Str

The token returned from previous API requests until the number of
channel memberships is reached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChannelMembershipsForAppInstanceUser in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

