
package Paws::CognitoIdp::SetRiskConfiguration;
  use Moose;
  has AccountTakeoverRiskConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::AccountTakeoverRiskConfigurationType');
  has ClientId => (is => 'ro', isa => 'Str');
  has CompromisedCredentialsRiskConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::CompromisedCredentialsRiskConfigurationType');
  has RiskExceptionConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::RiskExceptionConfigurationType');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetRiskConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::SetRiskConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetRiskConfiguration - Arguments for method SetRiskConfiguration on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetRiskConfiguration on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method SetRiskConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetRiskConfiguration.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $SetRiskConfigurationResponse = $cognito -idp->SetRiskConfiguration(
      UserPoolId                       => 'MyUserPoolIdType',
      AccountTakeoverRiskConfiguration => {
        Actions => {
          HighAction => {
            EventAction => 'BLOCK'
            ,    # values: BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
            Notify => 1,

          },    # OPTIONAL
          LowAction => {
            EventAction => 'BLOCK'
            ,    # values: BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
            Notify => 1,

          },    # OPTIONAL
          MediumAction => {
            EventAction => 'BLOCK'
            ,    # values: BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
            Notify => 1,

          },    # OPTIONAL
        },
        NotifyConfiguration => {
          SourceArn  => 'MyArnType',    # min: 20, max: 2048
          BlockEmail => {
            Subject  => 'MyEmailNotificationSubjectType',    # min: 1, max: 140
            HtmlBody =>
              'MyEmailNotificationBodyType',    # min: 6, max: 20000; OPTIONAL
            TextBody =>
              'MyEmailNotificationBodyType',    # min: 6, max: 20000; OPTIONAL
          },    # OPTIONAL
          From     => 'MyStringType',    # max: 131072; OPTIONAL
          MfaEmail => {
            Subject  => 'MyEmailNotificationSubjectType',    # min: 1, max: 140
            HtmlBody =>
              'MyEmailNotificationBodyType',    # min: 6, max: 20000; OPTIONAL
            TextBody =>
              'MyEmailNotificationBodyType',    # min: 6, max: 20000; OPTIONAL
          },    # OPTIONAL
          NoActionEmail => {
            Subject  => 'MyEmailNotificationSubjectType',    # min: 1, max: 140
            HtmlBody =>
              'MyEmailNotificationBodyType',    # min: 6, max: 20000; OPTIONAL
            TextBody =>
              'MyEmailNotificationBodyType',    # min: 6, max: 20000; OPTIONAL
          },    # OPTIONAL
          ReplyTo => 'MyStringType',    # max: 131072; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ClientId                                => 'MyClientIdType',    # OPTIONAL
      CompromisedCredentialsRiskConfiguration => {
        Actions => {
          EventAction => 'BLOCK',    # values: BLOCK, NO_ACTION

        },
        EventFilter => [
          'SIGN_IN', ...             # values: SIGN_IN, PASSWORD_CHANGE, SIGN_UP
        ],    # OPTIONAL
      },    # OPTIONAL
      RiskExceptionConfiguration => {
        BlockedIPRangeList => [
          'MyStringType', ...    # max: 131072; OPTIONAL
        ],    # max: 200; OPTIONAL
        SkippedIPRangeList => [
          'MyStringType', ...    # max: 131072; OPTIONAL
        ],    # max: 200; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $RiskConfiguration = $SetRiskConfigurationResponse->RiskConfiguration;

    # Returns a L<Paws::CognitoIdp::SetRiskConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AccountTakeoverRiskConfiguration => L<Paws::CognitoIdp::AccountTakeoverRiskConfigurationType>

The settings for automated responses and notification templates for
adaptive authentication with threat protection.



=head2 ClientId => Str

The ID of the app client where you want to set a risk configuration. If
C<ClientId> is null, then the risk configuration is mapped to
C<UserPoolId>. When the client ID is null, the same risk configuration
is applied to all the clients in the userPool.

When you include a C<ClientId> parameter, Amazon Cognito maps the
configuration to the app client. When you include both C<ClientId> and
C<UserPoolId>, Amazon Cognito maps the configuration to the app client
only.



=head2 CompromisedCredentialsRiskConfiguration => L<Paws::CognitoIdp::CompromisedCredentialsRiskConfigurationType>

The configuration of automated reactions to detected compromised
credentials. Includes settings for blocking future sign-in requests and
for the types of password-submission events you want to monitor.



=head2 RiskExceptionConfiguration => L<Paws::CognitoIdp::RiskExceptionConfigurationType>

A set of IP-address overrides to threat protection. You can set up
IP-address always-block and always-allow lists.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to set a risk configuration. If
you include C<UserPoolId> in your request, don't include C<ClientId>.
When the client ID is null, the same risk configuration is applied to
all the clients in the userPool. When you include both C<ClientId> and
C<UserPoolId>, Amazon Cognito maps the configuration to the app client
only.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetRiskConfiguration in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

