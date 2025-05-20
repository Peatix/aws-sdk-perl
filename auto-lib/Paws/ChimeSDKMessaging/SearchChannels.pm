
package Paws::ChimeSDKMessaging::SearchChannels;
  use Moose;
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::SearchField]', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchChannels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels?operation=search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::SearchChannelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::SearchChannels - Arguments for method SearchChannels on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchChannels on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method SearchChannels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchChannels.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $SearchChannelsResponse = $messaging -chime->SearchChannels(
      Fields => [
        {
          Key      => 'MEMBERS',    # values: MEMBERS
          Operator => 'EQUALS',     # values: EQUALS, INCLUDES
          Values   => [
            'MySearchFieldValue', ...    # min: 1, max: 512
          ],    # min: 1, max: 20

        },
        ...
      ],
      ChimeBearer => 'MyChimeArn',     # OPTIONAL
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Channels  = $SearchChannelsResponse->Channels;
    my $NextToken = $SearchChannelsResponse->NextToken;

    # Returns a L<Paws::ChimeSDKMessaging::SearchChannelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/SearchChannels>

=head1 ATTRIBUTES


=head2 ChimeBearer => Str

The C<AppInstanceUserArn> of the user making the API call.



=head2 B<REQUIRED> Fields => ArrayRef[L<Paws::ChimeSDKMessaging::SearchField>]

A list of the C<Field> objects in the channel being searched.



=head2 MaxResults => Int

The maximum number of channels that you want returned.



=head2 NextToken => Str

The token returned from previous API requests until the number of
channels is reached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchChannels in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

