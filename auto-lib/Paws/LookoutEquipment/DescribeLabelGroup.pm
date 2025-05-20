
package Paws::LookoutEquipment::DescribeLabelGroup;
  use Moose;
  has LabelGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLabelGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::DescribeLabelGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeLabelGroup - Arguments for method DescribeLabelGroup on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLabelGroup on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method DescribeLabelGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLabelGroup.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $DescribeLabelGroupResponse = $lookoutequipment->DescribeLabelGroup(
      LabelGroupName => 'MyLabelGroupName',

    );

    # Results:
    my $CreatedAt      = $DescribeLabelGroupResponse->CreatedAt;
    my $FaultCodes     = $DescribeLabelGroupResponse->FaultCodes;
    my $LabelGroupArn  = $DescribeLabelGroupResponse->LabelGroupArn;
    my $LabelGroupName = $DescribeLabelGroupResponse->LabelGroupName;
    my $UpdatedAt      = $DescribeLabelGroupResponse->UpdatedAt;

    # Returns a L<Paws::LookoutEquipment::DescribeLabelGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/DescribeLabelGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LabelGroupName => Str

Returns the name of the label group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLabelGroup in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

