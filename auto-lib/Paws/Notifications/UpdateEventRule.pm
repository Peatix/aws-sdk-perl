
package Paws::Notifications::UpdateEventRule;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);
  has EventPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventPattern');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'regions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEventRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/event-rules/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::UpdateEventRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::UpdateEventRule - Arguments for method UpdateEventRule on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventRule on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method UpdateEventRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventRule.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $UpdateEventRuleResponse = $notifications->UpdateEventRule(
      Arn          => 'MyEventRuleArn',
      EventPattern => 'MyEventRuleEventPattern',    # OPTIONAL
      Regions      => [
        'MyRegion', ...                             # min: 2, max: 25
      ],    # OPTIONAL
    );

    # Results:
    my $Arn = $UpdateEventRuleResponse->Arn;
    my $NotificationConfigurationArn =
      $UpdateEventRuleResponse->NotificationConfigurationArn;
    my $StatusSummaryByRegion = $UpdateEventRuleResponse->StatusSummaryByRegion;

    # Returns a L<Paws::Notifications::UpdateEventRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/UpdateEventRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) to use to update the C<EventRule>.



=head2 EventPattern => Str

An additional event pattern used to further filter the events this
C<EventRule> receives.

For more information, see Amazon EventBridge event patterns
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html)
in the I<Amazon EventBridge User Guide.>



=head2 Regions => ArrayRef[Str|Undef]

A list of Amazon Web Services Regions that sends events to this
C<EventRule>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventRule in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

