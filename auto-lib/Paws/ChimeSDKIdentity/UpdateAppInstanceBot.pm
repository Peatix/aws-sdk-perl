
package Paws::ChimeSDKIdentity::UpdateAppInstanceBot;
  use Moose;
  has AppInstanceBotArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceBotArn', required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::Configuration');
  has Metadata => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAppInstanceBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instance-bots/{appInstanceBotArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKIdentity::UpdateAppInstanceBotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::UpdateAppInstanceBot - Arguments for method UpdateAppInstanceBot on L<Paws::ChimeSDKIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAppInstanceBot on the
L<Amazon Chime SDK Identity|Paws::ChimeSDKIdentity> service. Use the attributes of this class
as arguments to method UpdateAppInstanceBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAppInstanceBot.

=head1 SYNOPSIS

    my $identity-chime = Paws->service('ChimeSDKIdentity');
    my $UpdateAppInstanceBotResponse = $identity -chime->UpdateAppInstanceBot(
      AppInstanceBotArn => 'MyChimeArn',
      Metadata          => 'MyMetadata',
      Name              => 'MyResourceName',
      Configuration     => {
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

      },    # OPTIONAL
    );

    # Results:
    my $AppInstanceBotArn = $UpdateAppInstanceBotResponse->AppInstanceBotArn;

    # Returns a L<Paws::ChimeSDKIdentity::UpdateAppInstanceBotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identity-chime/UpdateAppInstanceBot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceBotArn => Str

The ARN of the C<AppInstanceBot>.



=head2 Configuration => L<Paws::ChimeSDKIdentity::Configuration>

The configuration for the bot update.



=head2 B<REQUIRED> Metadata => Str

The metadata of the C<AppInstanceBot>.



=head2 B<REQUIRED> Name => Str

The name of the C<AppInstanceBot>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAppInstanceBot in L<Paws::ChimeSDKIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

