
package Paws::IoT::DeleteCommandExecution;
  use Moose;
  has ExecutionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'executionId', required => 1);
  has TargetArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'targetArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCommandExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/command-executions/{executionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteCommandExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteCommandExecution - Arguments for method DeleteCommandExecution on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCommandExecution on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteCommandExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCommandExecution.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteCommandExecutionResponse = $iot->DeleteCommandExecution(
      ExecutionId => 'MyCommandExecutionId',
      TargetArn   => 'MyTargetArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteCommandExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionId => Str

The unique identifier of the command execution that you want to delete
from your account.



=head2 B<REQUIRED> TargetArn => Str

The Amazon Resource Number (ARN) of the target device for which you
want to delete command executions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCommandExecution in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

