
package Paws::IoT::GetCommandExecution;
  use Moose;
  has ExecutionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'executionId', required => 1);
  has IncludeResult => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeResult');
  has TargetArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'targetArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCommandExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/command-executions/{executionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetCommandExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetCommandExecution - Arguments for method GetCommandExecution on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCommandExecution on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetCommandExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCommandExecution.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetCommandExecutionResponse = $iot->GetCommandExecution(
      ExecutionId   => 'MyCommandExecutionId',
      TargetArn     => 'MyTargetArn',
      IncludeResult => 1,                        # OPTIONAL
    );

    # Results:
    my $CommandArn  = $GetCommandExecutionResponse->CommandArn;
    my $CompletedAt = $GetCommandExecutionResponse->CompletedAt;
    my $CreatedAt   = $GetCommandExecutionResponse->CreatedAt;
    my $ExecutionId = $GetCommandExecutionResponse->ExecutionId;
    my $ExecutionTimeoutSeconds =
      $GetCommandExecutionResponse->ExecutionTimeoutSeconds;
    my $LastUpdatedAt = $GetCommandExecutionResponse->LastUpdatedAt;
    my $Parameters    = $GetCommandExecutionResponse->Parameters;
    my $Result        = $GetCommandExecutionResponse->Result;
    my $StartedAt     = $GetCommandExecutionResponse->StartedAt;
    my $Status        = $GetCommandExecutionResponse->Status;
    my $StatusReason  = $GetCommandExecutionResponse->StatusReason;
    my $TargetArn     = $GetCommandExecutionResponse->TargetArn;
    my $TimeToLive    = $GetCommandExecutionResponse->TimeToLive;

    # Returns a L<Paws::IoT::GetCommandExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetCommandExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionId => Str

The unique identifier for the command execution. This information is
returned as a response of the C<StartCommandExecution> API request.



=head2 IncludeResult => Bool

Can be used to specify whether to include the result of the command
execution in the C<GetCommandExecution> API response. Your device can
use this field to provide additional information about the command
execution. You only need to specify this field when using the
C<AWS-IoT> namespace.



=head2 B<REQUIRED> TargetArn => Str

The Amazon Resource Number (ARN) of the device on which the command
execution is being performed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCommandExecution in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

