
package Paws::CostExplorer::StartCostAllocationTagBackfill;
  use Moose;
  has BackfillFrom => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCostAllocationTagBackfill');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::StartCostAllocationTagBackfillResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::StartCostAllocationTagBackfill - Arguments for method StartCostAllocationTagBackfill on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCostAllocationTagBackfill on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method StartCostAllocationTagBackfill.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCostAllocationTagBackfill.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $StartCostAllocationTagBackfillResponse =
      $ce->StartCostAllocationTagBackfill(
      BackfillFrom => 'MyZonedDateTime',

      );

    # Results:
    my $BackfillRequest =
      $StartCostAllocationTagBackfillResponse->BackfillRequest;

# Returns a L<Paws::CostExplorer::StartCostAllocationTagBackfillResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/StartCostAllocationTagBackfill>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackfillFrom => Str

The date you want the backfill to start from. The date can only be a
first day of the month (a billing start date). Dates can't precede the
previous twelve months, or in the future.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCostAllocationTagBackfill in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

