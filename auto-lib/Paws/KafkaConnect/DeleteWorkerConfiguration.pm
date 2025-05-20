
package Paws::KafkaConnect::DeleteWorkerConfiguration;
  use Moose;
  has WorkerConfigurationArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workerConfigurationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWorkerConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/worker-configurations/{workerConfigurationArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::DeleteWorkerConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::DeleteWorkerConfiguration - Arguments for method DeleteWorkerConfiguration on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWorkerConfiguration on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method DeleteWorkerConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWorkerConfiguration.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $DeleteWorkerConfigurationResponse =
      $kafkaconnect->DeleteWorkerConfiguration(
      WorkerConfigurationArn => 'My__string',

      );

    # Results:
    my $WorkerConfigurationArn =
      $DeleteWorkerConfigurationResponse->WorkerConfigurationArn;
    my $WorkerConfigurationState =
      $DeleteWorkerConfigurationResponse->WorkerConfigurationState;

    # Returns a L<Paws::KafkaConnect::DeleteWorkerConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/DeleteWorkerConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkerConfigurationArn => Str

The Amazon Resource Name (ARN) of the worker configuration that you
want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWorkerConfiguration in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

