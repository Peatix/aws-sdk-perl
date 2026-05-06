
package Paws::Budgets::DescribeBudgets;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ShowFilterExpression => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBudgets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::DescribeBudgetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgets - Arguments for method DescribeBudgets on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBudgets on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method DescribeBudgets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBudgets.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $DescribeBudgetsResponse = $budgets->DescribeBudgets(
      AccountId            => 'MyAccountId',
      MaxResults           => 1,                    # OPTIONAL
      NextToken            => 'MyGenericString',    # OPTIONAL
      ShowFilterExpression => 1,                    # OPTIONAL
    );

    # Results:
    my $Budgets   = $DescribeBudgetsResponse->Budgets;
    my $NextToken = $DescribeBudgetsResponse->NextToken;

    # Returns a L<Paws::Budgets::DescribeBudgetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budgets that you want to
describe.



=head2 MaxResults => Int

An integer that represents how many budgets a paginated response
contains. The default is 100.



=head2 NextToken => Str

The pagination token that you include in your request to indicate the
next set of results that you want to retrieve.



=head2 ShowFilterExpression => Bool

Specifies whether the response includes the filter expression
associated with the budgets. By showing the filter expression, you can
see detailed filtering logic applied to the budgets, such as Amazon Web
Services services or tags that are being tracked.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBudgets in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

