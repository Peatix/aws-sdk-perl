
package Paws::FraudDetector::SendEvent;
  use Moose;
  has AssignedLabel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assignedLabel' );
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Entity]', traits => ['NameInRequest'], request_name => 'entities' , required => 1);
  has EventId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventId' , required => 1);
  has EventTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTimestamp' , required => 1);
  has EventTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTypeName' , required => 1);
  has EventVariables => (is => 'ro', isa => 'Paws::FraudDetector::EventVariableMap', traits => ['NameInRequest'], request_name => 'eventVariables' , required => 1);
  has LabelTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'labelTimestamp' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendEvent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::SendEventResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::SendEvent - Arguments for method SendEvent on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendEvent on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method SendEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendEvent.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $SendEventResult = $frauddetector->SendEvent(
      Entities => [
        {
          EntityId   => 'MyentityRestrictedString',    # min: 1, max: 256
          EntityType => 'Mystring',

        },
        ...
      ],
      EventId        => 'Myidentifier',
      EventTimestamp => 'MyutcTimestampISO8601',
      EventTypeName  => 'Myidentifier',
      EventVariables => {
        'MyvariableName' =>
          'MyvariableValue',    # key: min: 1, max: 64, value: min: 1, max: 8192
      },
      AssignedLabel  => 'Myidentifier',             # OPTIONAL
      LabelTimestamp => 'MyutcTimestampISO8601',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/SendEvent>

=head1 ATTRIBUTES


=head2 AssignedLabel => Str

The label to associate with the event. Required if specifying
C<labelTimestamp>.



=head2 B<REQUIRED> Entities => ArrayRef[L<Paws::FraudDetector::Entity>]

An array of entities.



=head2 B<REQUIRED> EventId => Str

The event ID to upload.



=head2 B<REQUIRED> EventTimestamp => Str

The timestamp that defines when the event under evaluation occurred.
The timestamp must be specified using ISO 8601 standard in UTC.



=head2 B<REQUIRED> EventTypeName => Str

The event type name of the event.



=head2 B<REQUIRED> EventVariables => L<Paws::FraudDetector::EventVariableMap>

Names of the event type's variables you defined in Amazon Fraud
Detector to represent data elements and their corresponding values for
the event you are sending for evaluation.



=head2 LabelTimestamp => Str

The timestamp associated with the label. Required if specifying
C<assignedLabel>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendEvent in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

