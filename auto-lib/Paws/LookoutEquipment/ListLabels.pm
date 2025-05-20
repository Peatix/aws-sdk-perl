
package Paws::LookoutEquipment::ListLabels;
  use Moose;
  has Equipment => (is => 'ro', isa => 'Str');
  has FaultCode => (is => 'ro', isa => 'Str');
  has IntervalEndTime => (is => 'ro', isa => 'Str');
  has IntervalStartTime => (is => 'ro', isa => 'Str');
  has LabelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLabels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::ListLabelsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListLabels - Arguments for method ListLabels on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLabels on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method ListLabels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLabels.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $ListLabelsResponse = $lookoutequipment->ListLabels(
      LabelGroupName    => 'MyLabelGroupName',
      Equipment         => 'MyEquipment',            # OPTIONAL
      FaultCode         => 'MyFaultCode',            # OPTIONAL
      IntervalEndTime   => '1970-01-01T01:00:00',    # OPTIONAL
      IntervalStartTime => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults        => 1,                        # OPTIONAL
      NextToken         => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $LabelSummaries = $ListLabelsResponse->LabelSummaries;
    my $NextToken      = $ListLabelsResponse->NextToken;

    # Returns a L<Paws::LookoutEquipment::ListLabelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/ListLabels>

=head1 ATTRIBUTES


=head2 Equipment => Str

Lists the labels that pertain to a particular piece of equipment.



=head2 FaultCode => Str

Returns labels with a particular fault code.



=head2 IntervalEndTime => Str

Returns all labels with a start time earlier than the end time given.



=head2 IntervalStartTime => Str

Returns all the labels with a end time equal to or later than the start
time given.



=head2 B<REQUIRED> LabelGroupName => Str

Returns the name of the label group.



=head2 MaxResults => Int

Specifies the maximum number of labels to list.



=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
label groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLabels in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

