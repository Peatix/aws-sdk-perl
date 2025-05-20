
package Paws::KendraRanking::CreateRescoreExecutionPlan;
  use Moose;
  has CapacityUnits => (is => 'ro', isa => 'Paws::KendraRanking::CapacityUnitsConfiguration');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KendraRanking::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRescoreExecutionPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KendraRanking::CreateRescoreExecutionPlanResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking::CreateRescoreExecutionPlan - Arguments for method CreateRescoreExecutionPlan on L<Paws::KendraRanking>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRescoreExecutionPlan on the
L<Amazon Kendra Intelligent Ranking|Paws::KendraRanking> service. Use the attributes of this class
as arguments to method CreateRescoreExecutionPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRescoreExecutionPlan.

=head1 SYNOPSIS

    my $kendra-ranking = Paws->service('KendraRanking');
    my $CreateRescoreExecutionPlanResponse =
      $kendra -ranking->CreateRescoreExecutionPlan(
      Name          => 'MyRescoreExecutionPlanName',
      CapacityUnits => {
        RescoreCapacityUnits => 1,

      },    # OPTIONAL
      ClientToken => 'MyClientTokenName',    # OPTIONAL
      Description => 'MyDescription',        # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateRescoreExecutionPlanResponse->Arn;
    my $Id  = $CreateRescoreExecutionPlanResponse->Id;

  # Returns a L<Paws::KendraRanking::CreateRescoreExecutionPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra-ranking/CreateRescoreExecutionPlan>

=head1 ATTRIBUTES


=head2 CapacityUnits => L<Paws::KendraRanking::CapacityUnitsConfiguration>

You can set additional capacity units to meet the needs of your rescore
execution plan. You are given a single capacity unit by default. If you
want to use the default capacity, you don't set additional capacity
units. For more information on the default capacity and additional
capacity units, see Adjusting capacity
(https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html).



=head2 ClientToken => Str

A token that you provide to identify the request to create a rescore
execution plan. Multiple calls to the
C<CreateRescoreExecutionPlanRequest> API with the same client token
will create only one rescore execution plan.



=head2 Description => Str

A description for the rescore execution plan.



=head2 B<REQUIRED> Name => Str

A name for the rescore execution plan.



=head2 Tags => ArrayRef[L<Paws::KendraRanking::Tag>]

A list of key-value pairs that identify or categorize your rescore
execution plan. You can also use tags to help control access to the
rescore execution plan. Tag keys and values can consist of Unicode
letters, digits, white space, and any of the following symbols: _ . : /
= + - @.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRescoreExecutionPlan in L<Paws::KendraRanking>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

