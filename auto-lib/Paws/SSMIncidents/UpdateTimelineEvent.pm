
package Paws::SSMIncidents::UpdateTimelineEvent;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has EventData => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventData');
  has EventId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventId', required => 1);
  has EventReferences => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::EventReference]', traits => ['NameInRequest'], request_name => 'eventReferences');
  has EventTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTime');
  has EventType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventType');
  has IncidentRecordArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'incidentRecordArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTimelineEvent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateTimelineEvent');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::UpdateTimelineEventOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::UpdateTimelineEvent - Arguments for method UpdateTimelineEvent on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTimelineEvent on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method UpdateTimelineEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTimelineEvent.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $UpdateTimelineEventOutput = $ssm -incidents->UpdateTimelineEvent(
      EventId           => 'MyUUID',
      IncidentRecordArn => 'MyArn',
      ClientToken       => 'MyClientToken',    # OPTIONAL
      EventData         => 'MyEventData',      # OPTIONAL
      EventReferences   => [
        {
          RelatedItemId => 'MyGeneratedId',    # max: 200; OPTIONAL
          Resource      => 'MyArn',            # max: 1000
        },
        ...
      ],    # OPTIONAL
      EventTime => '1970-01-01T01:00:00',    # OPTIONAL
      EventType => 'MyTimelineEventType',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/UpdateTimelineEvent>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures that a client calls the operation only once with
the specified details.



=head2 EventData => Str

A short description of the event.



=head2 B<REQUIRED> EventId => Str

The ID of the event to update. You can use C<ListTimelineEvents> to
find an event's ID.



=head2 EventReferences => ArrayRef[L<Paws::SSMIncidents::EventReference>]

Updates all existing references in a C<TimelineEvent>. A reference is
an Amazon Web Services resource involved or associated with the
incident. To specify a reference, enter its Amazon Resource Name (ARN).
You can also specify a related item associated with that resource. For
example, to specify an Amazon DynamoDB (DynamoDB) table as a resource,
use its ARN. You can also specify an Amazon CloudWatch metric
associated with the DynamoDB table as a related item.

This update action overrides all existing references. If you want to
keep existing references, you must specify them in the call. If you
don't, this action removes any existing references and enters only new
references.



=head2 EventTime => Str

The timestamp for when the event occurred.



=head2 EventType => Str

The type of event. You can update events of type C<Custom Event> and
C<Note>.



=head2 B<REQUIRED> IncidentRecordArn => Str

The Amazon Resource Name (ARN) of the incident that includes the
timeline event.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTimelineEvent in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

