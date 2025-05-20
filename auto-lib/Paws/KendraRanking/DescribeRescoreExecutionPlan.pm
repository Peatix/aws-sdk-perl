
package Paws::KendraRanking::DescribeRescoreExecutionPlan;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRescoreExecutionPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KendraRanking::DescribeRescoreExecutionPlanResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking::DescribeRescoreExecutionPlan - Arguments for method DescribeRescoreExecutionPlan on L<Paws::KendraRanking>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRescoreExecutionPlan on the
L<Amazon Kendra Intelligent Ranking|Paws::KendraRanking> service. Use the attributes of this class
as arguments to method DescribeRescoreExecutionPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRescoreExecutionPlan.

=head1 SYNOPSIS

    my $kendra-ranking = Paws->service('KendraRanking');
    my $DescribeRescoreExecutionPlanResponse =
      $kendra -ranking->DescribeRescoreExecutionPlan(
      Id => 'MyRescoreExecutionPlanId',

      );

    # Results:
    my $Arn           = $DescribeRescoreExecutionPlanResponse->Arn;
    my $CapacityUnits = $DescribeRescoreExecutionPlanResponse->CapacityUnits;
    my $CreatedAt     = $DescribeRescoreExecutionPlanResponse->CreatedAt;
    my $Description   = $DescribeRescoreExecutionPlanResponse->Description;
    my $ErrorMessage  = $DescribeRescoreExecutionPlanResponse->ErrorMessage;
    my $Id            = $DescribeRescoreExecutionPlanResponse->Id;
    my $Name          = $DescribeRescoreExecutionPlanResponse->Name;
    my $Status        = $DescribeRescoreExecutionPlanResponse->Status;
    my $UpdatedAt     = $DescribeRescoreExecutionPlanResponse->UpdatedAt;

# Returns a L<Paws::KendraRanking::DescribeRescoreExecutionPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra-ranking/DescribeRescoreExecutionPlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the rescore execution plan that you want to get
information on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRescoreExecutionPlan in L<Paws::KendraRanking>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

