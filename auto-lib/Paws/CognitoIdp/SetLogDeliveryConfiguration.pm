
package Paws::CognitoIdp::SetLogDeliveryConfiguration;
  use Moose;
  has LogConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::LogConfigurationType]', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLogDeliveryConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::SetLogDeliveryConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetLogDeliveryConfiguration - Arguments for method SetLogDeliveryConfiguration on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetLogDeliveryConfiguration on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method SetLogDeliveryConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetLogDeliveryConfiguration.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $SetLogDeliveryConfigurationResponse =
      $cognito -idp->SetLogDeliveryConfiguration(
      LogConfigurations => [
        {
          EventSource =>
            'userNotification',    # values: userNotification, userAuthEvents
          LogLevel                    => 'ERROR',    # values: ERROR, INFO
          CloudWatchLogsConfiguration => {
            LogGroupArn => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
          },    # OPTIONAL
          FirehoseConfiguration => {
            StreamArn => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
          },    # OPTIONAL
          S3Configuration => {
            BucketArn => 'MyS3ArnType',    # min: 3, max: 1024; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      UserPoolId => 'MyUserPoolIdType',

      );

    # Results:
    my $LogDeliveryConfiguration =
      $SetLogDeliveryConfigurationResponse->LogDeliveryConfiguration;

    # Returns a L<Paws::CognitoIdp::SetLogDeliveryConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogConfigurations => ArrayRef[L<Paws::CognitoIdp::LogConfigurationType>]

A collection of the logging configurations for a user pool.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to configure logging.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetLogDeliveryConfiguration in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

