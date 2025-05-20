
package Paws::LookoutEquipment::CreateLabel;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has Equipment => (is => 'ro', isa => 'Str');
  has FaultCode => (is => 'ro', isa => 'Str');
  has LabelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Notes => (is => 'ro', isa => 'Str');
  has Rating => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLabel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::CreateLabelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateLabel - Arguments for method CreateLabel on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLabel on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method CreateLabel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLabel.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $CreateLabelResponse = $lookoutequipment->CreateLabel(
      ClientToken    => 'MyIdempotenceToken',
      EndTime        => '1970-01-01T01:00:00',
      LabelGroupName => 'MyLabelGroupName',
      Rating         => 'ANOMALY',
      StartTime      => '1970-01-01T01:00:00',
      Equipment      => 'MyEquipment',           # OPTIONAL
      FaultCode      => 'MyFaultCode',           # OPTIONAL
      Notes          => 'MyComments',            # OPTIONAL
    );

    # Results:
    my $LabelId = $CreateLabelResponse->LabelId;

    # Returns a L<Paws::LookoutEquipment::CreateLabelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/CreateLabel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request to create a label. If you do not
set the client request token, Lookout for Equipment generates one.



=head2 B<REQUIRED> EndTime => Str

The end time of the labeled event.



=head2 Equipment => Str

Indicates that a label pertains to a particular piece of equipment.

Data in this field will be retained for service usage. Follow best
practices for the security of your data.



=head2 FaultCode => Str

Provides additional information about the label. The fault code must be
defined in the FaultCodes attribute of the label group.

Data in this field will be retained for service usage. Follow best
practices for the security of your data.



=head2 B<REQUIRED> LabelGroupName => Str

The name of a group of labels.

Data in this field will be retained for service usage. Follow best
practices for the security of your data.



=head2 Notes => Str

Metadata providing additional information about the label.

Data in this field will be retained for service usage. Follow best
practices for the security of your data.



=head2 B<REQUIRED> Rating => Str

Indicates whether a labeled event represents an anomaly.

Valid values are: C<"ANOMALY">, C<"NO_ANOMALY">, C<"NEUTRAL">

=head2 B<REQUIRED> StartTime => Str

The start time of the labeled event.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLabel in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

