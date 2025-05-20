
package Paws::LookoutEquipment::DescribeLabel;
  use Moose;
  has LabelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has LabelId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLabel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::DescribeLabelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeLabel - Arguments for method DescribeLabel on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLabel on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method DescribeLabel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLabel.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $DescribeLabelResponse = $lookoutequipment->DescribeLabel(
      LabelGroupName => 'MyLabelGroupName',
      LabelId        => 'MyLabelId',

    );

    # Results:
    my $CreatedAt      = $DescribeLabelResponse->CreatedAt;
    my $EndTime        = $DescribeLabelResponse->EndTime;
    my $Equipment      = $DescribeLabelResponse->Equipment;
    my $FaultCode      = $DescribeLabelResponse->FaultCode;
    my $LabelGroupArn  = $DescribeLabelResponse->LabelGroupArn;
    my $LabelGroupName = $DescribeLabelResponse->LabelGroupName;
    my $LabelId        = $DescribeLabelResponse->LabelId;
    my $Notes          = $DescribeLabelResponse->Notes;
    my $Rating         = $DescribeLabelResponse->Rating;
    my $StartTime      = $DescribeLabelResponse->StartTime;

    # Returns a L<Paws::LookoutEquipment::DescribeLabelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/DescribeLabel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LabelGroupName => Str

Returns the name of the group containing the label.



=head2 B<REQUIRED> LabelId => Str

Returns the ID of the label.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLabel in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

