
package Paws::OpenSearch::UpdateScheduledAction;
  use Moose;
  has ActionID => (is => 'ro', isa => 'Str', required => 1);
  has ActionType => (is => 'ro', isa => 'Str', required => 1);
  has DesiredStartTime => (is => 'ro', isa => 'Int');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has ScheduleAt => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScheduledAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/domain/{DomainName}/scheduledAction/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::UpdateScheduledActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::UpdateScheduledAction - Arguments for method UpdateScheduledAction on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateScheduledAction on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method UpdateScheduledAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateScheduledAction.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $UpdateScheduledActionResponse = $es->UpdateScheduledAction(
      ActionID         => 'MyString',
      ActionType       => 'SERVICE_SOFTWARE_UPDATE',
      DomainName       => 'MyDomainName',
      ScheduleAt       => 'NOW',
      DesiredStartTime => 1,                           # OPTIONAL
    );

    # Results:
    my $ScheduledAction = $UpdateScheduledActionResponse->ScheduledAction;

    # Returns a L<Paws::OpenSearch::UpdateScheduledActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionID => Str

The unique identifier of the action to reschedule. To retrieve this ID,
send a ListScheduledActions
(https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_ListScheduledActions.html)
request.



=head2 B<REQUIRED> ActionType => Str

The type of action to reschedule. Can be one of
C<SERVICE_SOFTWARE_UPDATE>, C<JVM_HEAP_SIZE_TUNING>, or
C<JVM_YOUNG_GEN_TUNING>. To retrieve this value, send a
ListScheduledActions
(https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_ListScheduledActions.html)
request.

Valid values are: C<"SERVICE_SOFTWARE_UPDATE">, C<"JVM_HEAP_SIZE_TUNING">, C<"JVM_YOUNG_GEN_TUNING">

=head2 DesiredStartTime => Int

The time to implement the change, in Coordinated Universal Time (UTC).
Only specify this parameter if you set C<ScheduleAt> to C<TIMESTAMP>.



=head2 B<REQUIRED> DomainName => Str

The name of the domain to reschedule an action for.



=head2 B<REQUIRED> ScheduleAt => Str

When to schedule the action.

=over

=item *

C<NOW> - Immediately schedules the update to happen in the current hour
if there's capacity available.

=item *

C<TIMESTAMP> - Lets you specify a custom date and time to apply the
update. If you specify this value, you must also provide a value for
C<DesiredStartTime>.

=item *

C<OFF_PEAK_WINDOW> - Marks the action to be picked up during an
upcoming off-peak window. There's no guarantee that the change will be
implemented during the next immediate window. Depending on capacity, it
might happen in subsequent days.

=back


Valid values are: C<"NOW">, C<"TIMESTAMP">, C<"OFF_PEAK_WINDOW">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateScheduledAction in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

