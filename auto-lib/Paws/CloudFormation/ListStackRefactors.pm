
package Paws::CloudFormation::ListStackRefactors;
  use Moose;
  has ExecutionStatusFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackRefactors');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListStackRefactorsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackRefactorsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackRefactors - Arguments for method ListStackRefactors on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStackRefactors on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListStackRefactors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStackRefactors.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListStackRefactorsOutput = $cloudformation->ListStackRefactors(
      ExecutionStatusFilter => [
        'UNAVAILABLE',
        ... # values: UNAVAILABLE, AVAILABLE, OBSOLETE, EXECUTE_IN_PROGRESS, EXECUTE_COMPLETE, EXECUTE_FAILED, ROLLBACK_IN_PROGRESS, ROLLBACK_COMPLETE, ROLLBACK_FAILED
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListStackRefactorsOutput->NextToken;
    my $StackRefactorSummaries =
      $ListStackRefactorsOutput->StackRefactorSummaries;

    # Returns a L<Paws::CloudFormation::ListStackRefactorsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListStackRefactors>

=head1 ATTRIBUTES


=head2 ExecutionStatusFilter => ArrayRef[Str|Undef]

Execution status to use as a filter. Specify one or more execution
status codes to list only stack refactors with the specified execution
status codes.



=head2 MaxResults => Int

The maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.



=head2 NextToken => Str

If the request doesn't return all the remaining results, C<NextToken>
is set to a token. To retrieve the next set of results, call this
action again and assign that token to the request object's C<NextToken>
parameter. If the request returns all results, C<NextToken> is set to
C<null>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStackRefactors in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

