
package Paws::KafkaConnect::CreateWorkerConfiguration;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has PropertiesFileContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'propertiesFileContent', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::KafkaConnect::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkerConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/worker-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::CreateWorkerConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::CreateWorkerConfiguration - Arguments for method CreateWorkerConfiguration on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkerConfiguration on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method CreateWorkerConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkerConfiguration.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $CreateWorkerConfigurationResponse =
      $kafkaconnect->CreateWorkerConfiguration(
      Name                  => 'My__stringMin1Max128',
      PropertiesFileContent => 'My__sensitiveString',
      Description           => 'My__stringMax1024',      # OPTIONAL
      Tags                  => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $CreationTime   = $CreateWorkerConfigurationResponse->CreationTime;
    my $LatestRevision = $CreateWorkerConfigurationResponse->LatestRevision;
    my $Name           = $CreateWorkerConfigurationResponse->Name;
    my $WorkerConfigurationArn =
      $CreateWorkerConfigurationResponse->WorkerConfigurationArn;
    my $WorkerConfigurationState =
      $CreateWorkerConfigurationResponse->WorkerConfigurationState;

    # Returns a L<Paws::KafkaConnect::CreateWorkerConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/CreateWorkerConfiguration>

=head1 ATTRIBUTES


=head2 Description => Str

A summary description of the worker configuration.



=head2 B<REQUIRED> Name => Str

The name of the worker configuration.



=head2 B<REQUIRED> PropertiesFileContent => Str

Base64 encoded contents of connect-distributed.properties file.



=head2 Tags => L<Paws::KafkaConnect::Tags>

The tags you want to attach to the worker configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkerConfiguration in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

