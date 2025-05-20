
package Paws::KendraRanking::ListRescoreExecutionPlans;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRescoreExecutionPlans');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KendraRanking::ListRescoreExecutionPlansResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking::ListRescoreExecutionPlans - Arguments for method ListRescoreExecutionPlans on L<Paws::KendraRanking>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRescoreExecutionPlans on the
L<Amazon Kendra Intelligent Ranking|Paws::KendraRanking> service. Use the attributes of this class
as arguments to method ListRescoreExecutionPlans.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRescoreExecutionPlans.

=head1 SYNOPSIS

    my $kendra-ranking = Paws->service('KendraRanking');
    my $ListRescoreExecutionPlansResponse =
      $kendra -ranking->ListRescoreExecutionPlans(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken    = $ListRescoreExecutionPlansResponse->NextToken;
    my $SummaryItems = $ListRescoreExecutionPlansResponse->SummaryItems;

   # Returns a L<Paws::KendraRanking::ListRescoreExecutionPlansResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra-ranking/ListRescoreExecutionPlans>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of rescore execution plans to return.



=head2 NextToken => Str

If the response is truncated, Amazon Kendra Intelligent Ranking returns
a pagination token in the response. You can use this pagination token
to retrieve the next set of rescore execution plans.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRescoreExecutionPlans in L<Paws::KendraRanking>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

