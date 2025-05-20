
package Paws::LookoutEquipment::CreateLabelGroup;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has FaultCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LabelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLabelGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::CreateLabelGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateLabelGroup - Arguments for method CreateLabelGroup on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLabelGroup on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method CreateLabelGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLabelGroup.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $CreateLabelGroupResponse = $lookoutequipment->CreateLabelGroup(
      ClientToken    => 'MyIdempotenceToken',
      LabelGroupName => 'MyLabelGroupName',
      FaultCodes     => [
        'MyFaultCode', ...    # min: 1, max: 100
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LabelGroupArn  = $CreateLabelGroupResponse->LabelGroupArn;
    my $LabelGroupName = $CreateLabelGroupResponse->LabelGroupName;

    # Returns a L<Paws::LookoutEquipment::CreateLabelGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/CreateLabelGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request to create a label group. If you do
not set the client request token, Lookout for Equipment generates one.



=head2 FaultCodes => ArrayRef[Str|Undef]

The acceptable fault codes (indicating the type of anomaly associated
with the label) that can be used with this label group.

Data in this field will be retained for service usage. Follow best
practices for the security of your data.



=head2 B<REQUIRED> LabelGroupName => Str

Names a group of labels.

Data in this field will be retained for service usage. Follow best
practices for the security of your data.



=head2 Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]

Tags that provide metadata about the label group you are creating.

Data in this field will be retained for service usage. Follow best
practices for the security of your data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLabelGroup in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

