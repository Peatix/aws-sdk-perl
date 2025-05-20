
package Paws::Deadline::GetBudget;
  use Moose;
  has BudgetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'budgetId', required => 1);
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBudget');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/budgets/{budgetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetBudgetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetBudget - Arguments for method GetBudget on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBudget on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetBudget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBudget.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetBudgetResponse = $deadline->GetBudget(
      BudgetId => 'MyBudgetId',
      FarmId   => 'MyFarmId',

    );

    # Results:
    my $Actions                = $GetBudgetResponse->Actions;
    my $ApproximateDollarLimit = $GetBudgetResponse->ApproximateDollarLimit;
    my $BudgetId               = $GetBudgetResponse->BudgetId;
    my $CreatedAt              = $GetBudgetResponse->CreatedAt;
    my $CreatedBy              = $GetBudgetResponse->CreatedBy;
    my $Description            = $GetBudgetResponse->Description;
    my $DisplayName            = $GetBudgetResponse->DisplayName;
    my $QueueStoppedAt         = $GetBudgetResponse->QueueStoppedAt;
    my $Schedule               = $GetBudgetResponse->Schedule;
    my $Status                 = $GetBudgetResponse->Status;
    my $UpdatedAt              = $GetBudgetResponse->UpdatedAt;
    my $UpdatedBy              = $GetBudgetResponse->UpdatedBy;
    my $UsageTrackingResource  = $GetBudgetResponse->UsageTrackingResource;
    my $Usages                 = $GetBudgetResponse->Usages;

    # Returns a L<Paws::Deadline::GetBudgetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetBudget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BudgetId => Str

The budget ID.



=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm connected to the budget.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBudget in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

