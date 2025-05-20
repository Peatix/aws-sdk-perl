
package Paws::KafkaConnect::DescribeWorkerConfiguration;
  use Moose;
  has WorkerConfigurationArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workerConfigurationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkerConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/worker-configurations/{workerConfigurationArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::DescribeWorkerConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::DescribeWorkerConfiguration - Arguments for method DescribeWorkerConfiguration on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkerConfiguration on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method DescribeWorkerConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkerConfiguration.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $DescribeWorkerConfigurationResponse =
      $kafkaconnect->DescribeWorkerConfiguration(
      WorkerConfigurationArn => 'My__string',

      );

    # Results:
    my $CreationTime   = $DescribeWorkerConfigurationResponse->CreationTime;
    my $Description    = $DescribeWorkerConfigurationResponse->Description;
    my $LatestRevision = $DescribeWorkerConfigurationResponse->LatestRevision;
    my $Name           = $DescribeWorkerConfigurationResponse->Name;
    my $WorkerConfigurationArn =
      $DescribeWorkerConfigurationResponse->WorkerConfigurationArn;
    my $WorkerConfigurationState =
      $DescribeWorkerConfigurationResponse->WorkerConfigurationState;

  # Returns a L<Paws::KafkaConnect::DescribeWorkerConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/DescribeWorkerConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkerConfigurationArn => Str

The Amazon Resource Name (ARN) of the worker configuration that you
want to get information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkerConfiguration in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

