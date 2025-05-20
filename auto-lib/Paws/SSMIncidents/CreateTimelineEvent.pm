
package Paws::SSMIncidents::CreateTimelineEvent;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has EventData => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventData', required => 1);
  has EventReferences => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::EventReference]', traits => ['NameInRequest'], request_name => 'eventReferences');
  has EventTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTime', required => 1);
  has EventType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventType', required => 1);
  has IncidentRecordArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'incidentRecordArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTimelineEvent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createTimelineEvent');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::CreateTimelineEventOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::CreateTimelineEvent - Arguments for method CreateTimelineEvent on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTimelineEvent on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method CreateTimelineEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTimelineEvent.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $CreateTimelineEventOutput = $ssm -incidents->CreateTimelineEvent(
      EventData         => 'MyEventData',
      EventTime         => '1970-01-01T01:00:00',
      EventType         => 'MyTimelineEventType',
      IncidentRecordArn => 'MyArn',
      ClientToken       => 'MyClientToken',         # OPTIONAL
      EventReferences   => [
        {
          RelatedItemId => 'MyGeneratedId',    # max: 200; OPTIONAL
          Resource      => 'MyArn',            # max: 1000
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $EventId           = $CreateTimelineEventOutput->EventId;
    my $IncidentRecordArn = $CreateTimelineEventOutput->IncidentRecordArn;

    # Returns a L<Paws::SSMIncidents::CreateTimelineEventOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/CreateTimelineEvent>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures that a client calls the action only once with the
specified details.



=head2 B<REQUIRED> EventData => Str

A short description of the event.



=head2 EventReferences => ArrayRef[L<Paws::SSMIncidents::EventReference>]

Adds one or more references to the C<TimelineEvent>. A reference is an
Amazon Web Services resource involved or associated with the incident.
To specify a reference, enter its Amazon Resource Name (ARN). You can
also specify a related item associated with a resource. For example, to
specify an Amazon DynamoDB (DynamoDB) table as a resource, use the
table's ARN. You can also specify an Amazon CloudWatch metric
associated with the DynamoDB table as a related item.



=head2 B<REQUIRED> EventTime => Str

The timestamp for when the event occurred.



=head2 B<REQUIRED> EventType => Str

The type of event. You can create timeline events of type C<Custom
Event> and C<Note>.

To make a Note-type event appear on the I<Incident notes> panel in the
console, specify C<eventType> as C<Note>and enter the Amazon Resource
Name (ARN) of the incident as the value for C<eventReference>.



=head2 B<REQUIRED> IncidentRecordArn => Str

The Amazon Resource Name (ARN) of the incident record that the action
adds the incident to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTimelineEvent in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

