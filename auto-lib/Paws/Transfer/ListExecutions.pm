
package Paws::Transfer::ListExecutions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkflowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::ListExecutionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListExecutions - Arguments for method ListExecutions on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExecutions on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method ListExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExecutions.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ListExecutionsResponse = $transfer->ListExecutions(
      WorkflowId => 'MyWorkflowId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Executions = $ListExecutionsResponse->Executions;
    my $NextToken  = $ListExecutionsResponse->NextToken;
    my $WorkflowId = $ListExecutionsResponse->WorkflowId;

    # Returns a L<Paws::Transfer::ListExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ListExecutions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return.



=head2 NextToken => Str

C<ListExecutions> returns the C<NextToken> parameter in the output. You
can then pass the C<NextToken> parameter in a subsequent command to
continue listing additional executions.

This is useful for pagination, for instance. If you have 100 executions
for a workflow, you might only want to list first 10. If so, call the
API by specifying the C<max-results>:

C<aws transfer list-executions --max-results 10>

This returns details for the first 10 executions, as well as the
pointer (C<NextToken>) to the eleventh execution. You can now call the
API again, supplying the C<NextToken> value you received:

C<aws transfer list-executions --max-results 10 --next-token
$somePointerReturnedFromPreviousListResult>

This call returns the next 10 executions, the 11th through the 20th.
You can then repeat the call until the details for all 100 executions
have been returned.



=head2 B<REQUIRED> WorkflowId => Str

A unique identifier for the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExecutions in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

