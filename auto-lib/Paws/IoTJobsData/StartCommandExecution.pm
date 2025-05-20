
package Paws::IoTJobsData::StartCommandExecution;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CommandArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commandArn', required => 1);
  has ExecutionTimeoutSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'executionTimeoutSeconds');
  has Parameters => (is => 'ro', isa => 'Paws::IoTJobsData::CommandExecutionParameterMap', traits => ['NameInRequest'], request_name => 'parameters');
  has TargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCommandExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/command-executions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTJobsData::StartCommandExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::StartCommandExecution - Arguments for method StartCommandExecution on L<Paws::IoTJobsData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCommandExecution on the
L<AWS IoT Jobs Data Plane|Paws::IoTJobsData> service. Use the attributes of this class
as arguments to method StartCommandExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCommandExecution.

=head1 SYNOPSIS

    my $data.jobs.iot = Paws->service('IoTJobsData');
    my $StartCommandExecutionResponse =
      $data . jobs . iot->StartCommandExecution(
      CommandArn              => 'MyCommandArn',
      TargetArn               => 'MyTargetArn',
      ClientToken             => 'MyClientRequestTokenV2',    # OPTIONAL
      ExecutionTimeoutSeconds => 1,                           # OPTIONAL
      Parameters              => {
        'MyCommandParameterName' => {
          B   => 1,                                 # OPTIONAL
          BIN => 'BlobBinaryParameterValue',        # min: 1; OPTIONAL
          D   => 1,                                 # OPTIONAL
          I   => 1,                                 # OPTIONAL
          L   => 1,                                 # OPTIONAL
          S   => 'MyStringParameterValue',          # min: 1; OPTIONAL
          UL  => 'MyUnsignedLongParameterValue',    # min: 1, max: 20; OPTIONAL
        },    # key: min: 1, max: 192
      },    # OPTIONAL
      );

    # Results:
    my $ExecutionId = $StartCommandExecutionResponse->ExecutionId;

    # Returns a L<Paws::IoTJobsData::StartCommandExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.jobs.iot/StartCommandExecution>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token is used to implement idempotency. It ensures that the
request completes no more than one time. If you retry a request with
the same token and the same parameters, the request will complete
successfully. However, if you retry the request using the same token
but different parameters, an HTTP 409 conflict occurs. If you omit this
value, Amazon Web Services SDKs will automatically generate a unique
client request.



=head2 B<REQUIRED> CommandArn => Str

The Amazon Resource Number (ARN) of the command. For example,
C<arn:aws:iot:E<lt>regionE<gt>:E<lt>accountidE<gt>:command/E<lt>commandNameE<gt>>



=head2 ExecutionTimeoutSeconds => Int

Specifies the amount of time in second the device has to finish the
command execution. A timer is started as soon as the command execution
is created. If the command execution status is not set to another
terminal state before the timer expires, it will automatically update
to C<TIMED_OUT>.



=head2 Parameters => L<Paws::IoTJobsData::CommandExecutionParameterMap>

A list of parameters that are required by the C<StartCommandExecution>
API when performing the command on a device.



=head2 B<REQUIRED> TargetArn => Str

The Amazon Resource Number (ARN) of the device where the command
execution is occurring.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCommandExecution in L<Paws::IoTJobsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

