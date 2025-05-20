
package Paws::FraudDetector::UpdateEventLabel;
  use Moose;
  has AssignedLabel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assignedLabel' , required => 1);
  has EventId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventId' , required => 1);
  has EventTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTypeName' , required => 1);
  has LabelTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'labelTimestamp' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEventLabel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::UpdateEventLabelResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::UpdateEventLabel - Arguments for method UpdateEventLabel on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventLabel on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method UpdateEventLabel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventLabel.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $UpdateEventLabelResult = $frauddetector->UpdateEventLabel(
      AssignedLabel  => 'Myidentifier',
      EventId        => 'Myidentifier',
      EventTypeName  => 'Myidentifier',
      LabelTimestamp => 'MyutcTimestampISO8601',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/UpdateEventLabel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssignedLabel => Str

The new label to assign to the event.



=head2 B<REQUIRED> EventId => Str

The ID of the event associated with the label to update.



=head2 B<REQUIRED> EventTypeName => Str

The event type of the event associated with the label to update.



=head2 B<REQUIRED> LabelTimestamp => Str

The timestamp associated with the label. The timestamp must be
specified using ISO 8601 standard in UTC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventLabel in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

