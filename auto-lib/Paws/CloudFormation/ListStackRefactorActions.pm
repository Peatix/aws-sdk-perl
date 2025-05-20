
package Paws::CloudFormation::ListStackRefactorActions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StackRefactorId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackRefactorActions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListStackRefactorActionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackRefactorActionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackRefactorActions - Arguments for method ListStackRefactorActions on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStackRefactorActions on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListStackRefactorActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStackRefactorActions.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListStackRefactorActionsOutput =
      $cloudformation->ListStackRefactorActions(
      StackRefactorId => 'MyStackRefactorId',
      MaxResults      => 1,                     # OPTIONAL
      NextToken       => 'MyNextToken',         # OPTIONAL
      );

    # Results:
    my $NextToken = $ListStackRefactorActionsOutput->NextToken;
    my $StackRefactorActions =
      $ListStackRefactorActionsOutput->StackRefactorActions;

    # Returns a L<Paws::CloudFormation::ListStackRefactorActionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListStackRefactorActions>

=head1 ATTRIBUTES


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



=head2 B<REQUIRED> StackRefactorId => Str

The ID associated with the stack refactor created from the
CreateStackRefactor action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStackRefactorActions in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

