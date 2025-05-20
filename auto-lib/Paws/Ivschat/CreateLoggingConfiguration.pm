
package Paws::Ivschat::CreateLoggingConfiguration;
  use Moose;
  has DestinationConfiguration => (is => 'ro', isa => 'Paws::Ivschat::DestinationConfiguration', traits => ['NameInRequest'], request_name => 'destinationConfiguration', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::Ivschat::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoggingConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateLoggingConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Ivschat::CreateLoggingConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::CreateLoggingConfiguration - Arguments for method CreateLoggingConfiguration on L<Paws::Ivschat>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLoggingConfiguration on the
L<Amazon Interactive Video Service Chat|Paws::Ivschat> service. Use the attributes of this class
as arguments to method CreateLoggingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLoggingConfiguration.

=head1 SYNOPSIS

    my $ivschat = Paws->service('Ivschat');
    my $CreateLoggingConfigurationResponse =
      $ivschat->CreateLoggingConfiguration(
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
      },
      Name => 'MyLoggingConfigurationName',    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn        = $CreateLoggingConfigurationResponse->Arn;
    my $CreateTime = $CreateLoggingConfigurationResponse->CreateTime;
    my $DestinationConfiguration =
      $CreateLoggingConfigurationResponse->DestinationConfiguration;
    my $Id         = $CreateLoggingConfigurationResponse->Id;
    my $Name       = $CreateLoggingConfigurationResponse->Name;
    my $State      = $CreateLoggingConfigurationResponse->State;
    my $Tags       = $CreateLoggingConfigurationResponse->Tags;
    my $UpdateTime = $CreateLoggingConfigurationResponse->UpdateTime;

    # Returns a L<Paws::Ivschat::CreateLoggingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivschat/CreateLoggingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationConfiguration => L<Paws::Ivschat::DestinationConfiguration>

A complex type that contains a destination configuration for where chat
content will be logged. There can be only one type of destination
(C<cloudWatchLogs>, C<firehose>, or C<s3>) in a
C<destinationConfiguration>.



=head2 Name => Str

Logging-configuration name. The value does not need to be unique.



=head2 Tags => L<Paws::Ivschat::Tags>

Tags to attach to the resource. Array of maps, each of the form
C<string:string (key:value)>. See Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging Amazon Web Services Resources and Tag Editor> for details,
including restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS Chat has no constraints on tags beyond what
is documented there.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLoggingConfiguration in L<Paws::Ivschat>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

