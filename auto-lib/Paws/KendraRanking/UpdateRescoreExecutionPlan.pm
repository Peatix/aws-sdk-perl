
package Paws::KendraRanking::UpdateRescoreExecutionPlan;
  use Moose;
  has CapacityUnits => (is => 'ro', isa => 'Paws::KendraRanking::CapacityUnitsConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRescoreExecutionPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking::UpdateRescoreExecutionPlan - Arguments for method UpdateRescoreExecutionPlan on L<Paws::KendraRanking>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRescoreExecutionPlan on the
L<Amazon Kendra Intelligent Ranking|Paws::KendraRanking> service. Use the attributes of this class
as arguments to method UpdateRescoreExecutionPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRescoreExecutionPlan.

=head1 SYNOPSIS

    my $kendra-ranking = Paws->service('KendraRanking');
    $kendra -ranking->UpdateRescoreExecutionPlan(
      Id            => 'MyRescoreExecutionPlanId',
      CapacityUnits => {
        RescoreCapacityUnits => 1,

      },    # OPTIONAL
      Description => 'MyDescription',                 # OPTIONAL
      Name        => 'MyRescoreExecutionPlanName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra-ranking/UpdateRescoreExecutionPlan>

=head1 ATTRIBUTES


=head2 CapacityUnits => L<Paws::KendraRanking::CapacityUnitsConfiguration>

You can set additional capacity units to meet the needs of your rescore
execution plan. You are given a single capacity unit by default. If you
want to use the default capacity, you don't set additional capacity
units. For more information on the default capacity and additional
capacity units, see Adjusting capacity
(https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html).



=head2 Description => Str

A new description for the rescore execution plan.



=head2 B<REQUIRED> Id => Str

The identifier of the rescore execution plan that you want to update.



=head2 Name => Str

A new name for the rescore execution plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRescoreExecutionPlan in L<Paws::KendraRanking>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

