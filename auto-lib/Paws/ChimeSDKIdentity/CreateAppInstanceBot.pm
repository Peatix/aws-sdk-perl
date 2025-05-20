
package Paws::ChimeSDKIdentity::CreateAppInstanceBot;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::Configuration', required => 1);
  has Metadata => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKIdentity::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppInstanceBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instance-bots');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKIdentity::CreateAppInstanceBotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::CreateAppInstanceBot - Arguments for method CreateAppInstanceBot on L<Paws::ChimeSDKIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAppInstanceBot on the
L<Amazon Chime SDK Identity|Paws::ChimeSDKIdentity> service. Use the attributes of this class
as arguments to method CreateAppInstanceBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAppInstanceBot.

=head1 SYNOPSIS

    my $identity-chime = Paws->service('ChimeSDKIdentity');
    my $CreateAppInstanceBotResponse = $identity -chime->CreateAppInstanceBot(
      AppInstanceArn     => 'MyChimeArn',
      ClientRequestToken => 'MyClientRequestToken',
      Configuration      => {
        Lex => {
          LexBotAliasArn => 'MyLexBotAliasArn',    # min: 15, max: 2048
          LocaleId       => 'MyString',
          InvokedBy      => {
            StandardMessages => 'AUTO',    # values: AUTO, ALL, MENTIONS, NONE
            TargetedMessages => 'ALL',     # values: ALL, NONE

          },    # OPTIONAL
          RespondsTo =>
            'STANDARD_MESSAGES',    # values: STANDARD_MESSAGES; OPTIONAL
          WelcomeIntent => 'MyLexIntentName',    # min: 1, max: 100; OPTIONAL
        },

      },
      Metadata => 'MyMetadata',        # OPTIONAL
      Name     => 'MyResourceName',    # OPTIONAL
      Tags     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AppInstanceBotArn = $CreateAppInstanceBotResponse->AppInstanceBotArn;

    # Returns a L<Paws::ChimeSDKIdentity::CreateAppInstanceBotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identity-chime/CreateAppInstanceBot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the C<AppInstance> request.



=head2 B<REQUIRED> ClientRequestToken => Str

The unique ID for the client making the request. Use different tokens
for different C<AppInstanceBots>.



=head2 B<REQUIRED> Configuration => L<Paws::ChimeSDKIdentity::Configuration>

Configuration information about the Amazon Lex V2 V2 bot.



=head2 Metadata => Str

The request metadata. Limited to a 1KB string in UTF-8.



=head2 Name => Str

The user's name.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKIdentity::Tag>]

The tags assigned to the C<AppInstanceBot>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAppInstanceBot in L<Paws::ChimeSDKIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

