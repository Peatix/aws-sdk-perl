
package Paws::Ivschat::UpdateLoggingConfiguration;
  use Moose;
  has DestinationConfiguration => (is => 'ro', isa => 'Paws::Ivschat::DestinationConfiguration', traits => ['NameInRequest'], request_name => 'destinationConfiguration');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLoggingConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateLoggingConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Ivschat::UpdateLoggingConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::UpdateLoggingConfiguration - Arguments for method UpdateLoggingConfiguration on L<Paws::Ivschat>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLoggingConfiguration on the
L<Amazon Interactive Video Service Chat|Paws::Ivschat> service. Use the attributes of this class
as arguments to method UpdateLoggingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLoggingConfiguration.

=head1 SYNOPSIS

    my $ivschat = Paws->service('Ivschat');
    my $UpdateLoggingConfigurationResponse =
      $ivschat->UpdateLoggingConfiguration(
      Identifier               => 'MyLoggingConfigurationIdentifier',
      DestinationConfiguration => {
        CloudWatchLogs => {
          LogGroupName => 'MyLogGroupName',    # min: 1, max: 512

        },    # OPTIONAL
        Firehose => {
          DeliveryStreamName => 'MyDeliveryStreamName',    # min: 1, max: 64

        },    # OPTIONAL
        S3 => {
          BucketName => 'MyBucketName',    # min: 3, max: 63

        },    # OPTIONAL
      },    # OPTIONAL
      Name => 'MyLoggingConfigurationName',    # OPTIONAL
      );

    # Results:
    my $Arn        = $UpdateLoggingConfigurationResponse->Arn;
    my $CreateTime = $UpdateLoggingConfigurationResponse->CreateTime;
    my $DestinationConfiguration =
      $UpdateLoggingConfigurationResponse->DestinationConfiguration;
    my $Id         = $UpdateLoggingConfigurationResponse->Id;
    my $Name       = $UpdateLoggingConfigurationResponse->Name;
    my $State      = $UpdateLoggingConfigurationResponse->State;
    my $Tags       = $UpdateLoggingConfigurationResponse->Tags;
    my $UpdateTime = $UpdateLoggingConfigurationResponse->UpdateTime;

    # Returns a L<Paws::Ivschat::UpdateLoggingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivschat/UpdateLoggingConfiguration>

=head1 ATTRIBUTES


=head2 DestinationConfiguration => L<Paws::Ivschat::DestinationConfiguration>

A complex type that contains a destination configuration for where chat
content will be logged. There can be only one type of destination
(C<cloudWatchLogs>, C<firehose>, or C<s3>) in a
C<destinationConfiguration>.



=head2 B<REQUIRED> Identifier => Str

Identifier of the logging configuration to be updated.



=head2 Name => Str

Logging-configuration name. The value does not need to be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLoggingConfiguration in L<Paws::Ivschat>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

