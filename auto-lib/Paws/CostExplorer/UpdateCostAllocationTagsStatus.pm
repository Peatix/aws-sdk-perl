
package Paws::CostExplorer::UpdateCostAllocationTagsStatus;
  use Moose;
  has CostAllocationTagsStatus => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::CostAllocationTagStatusEntry]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCostAllocationTagsStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::UpdateCostAllocationTagsStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::UpdateCostAllocationTagsStatus - Arguments for method UpdateCostAllocationTagsStatus on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCostAllocationTagsStatus on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method UpdateCostAllocationTagsStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCostAllocationTagsStatus.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $UpdateCostAllocationTagsStatusResponse =
      $ce->UpdateCostAllocationTagsStatus(
      CostAllocationTagsStatus => [
        {
          Status => 'Active',      # values: Active, Inactive
          TagKey => 'MyTagKey',    # max: 1024

        },
        ...
      ],

      );

    # Results:
    my $Errors = $UpdateCostAllocationTagsStatusResponse->Errors;

# Returns a L<Paws::CostExplorer::UpdateCostAllocationTagsStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/UpdateCostAllocationTagsStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CostAllocationTagsStatus => ArrayRef[L<Paws::CostExplorer::CostAllocationTagStatusEntry>]

The list of C<CostAllocationTagStatusEntry> objects that are used to
update cost allocation tags status for this request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCostAllocationTagsStatus in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

