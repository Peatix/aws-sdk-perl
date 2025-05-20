
package Paws::Bedrock::PutModelInvocationLoggingConfiguration;
  use Moose;
  has LoggingConfig => (is => 'ro', isa => 'Paws::Bedrock::LoggingConfig', traits => ['NameInRequest'], request_name => 'loggingConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutModelInvocationLoggingConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/logging/modelinvocations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::PutModelInvocationLoggingConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::PutModelInvocationLoggingConfiguration - Arguments for method PutModelInvocationLoggingConfiguration on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutModelInvocationLoggingConfiguration on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method PutModelInvocationLoggingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutModelInvocationLoggingConfiguration.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $PutModelInvocationLoggingConfigurationResponse =
      $bedrock->PutModelInvocationLoggingConfiguration(
      LoggingConfig => {
        CloudWatchConfig => {
          LogGroupName              => 'MyLogGroupName',    # min: 1, max: 512
          RoleArn                   => 'MyRoleArn',         # max: 2048
          LargeDataDeliveryS3Config => {
            BucketName => 'MyBucketName',    # min: 3, max: 63
            KeyPrefix  => 'MyKeyPrefix',     # max: 1024; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        EmbeddingDataDeliveryEnabled => 1,    # OPTIONAL
        ImageDataDeliveryEnabled     => 1,    # OPTIONAL
        S3Config                     => {
          BucketName => 'MyBucketName',       # min: 3, max: 63
          KeyPrefix  => 'MyKeyPrefix',        # max: 1024; OPTIONAL
        },    # OPTIONAL
        TextDataDeliveryEnabled  => 1,    # OPTIONAL
        VideoDataDeliveryEnabled => 1,    # OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/PutModelInvocationLoggingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoggingConfig => L<Paws::Bedrock::LoggingConfig>

The logging configuration values to set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutModelInvocationLoggingConfiguration in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

