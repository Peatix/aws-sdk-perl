
package Paws::Notifications::GetEventRule;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEventRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/event-rules/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::GetEventRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::GetEventRule - Arguments for method GetEventRule on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEventRule on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method GetEventRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEventRule.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $GetEventRuleResponse = $notifications->GetEventRule(
      Arn => 'MyEventRuleArn',

    );

    # Results:
    my $Arn          = $GetEventRuleResponse->Arn;
    my $CreationTime = $GetEventRuleResponse->CreationTime;
    my $EventPattern = $GetEventRuleResponse->EventPattern;
    my $EventType    = $GetEventRuleResponse->EventType;
    my $ManagedRules = $GetEventRuleResponse->ManagedRules;
    my $NotificationConfigurationArn =
      $GetEventRuleResponse->NotificationConfigurationArn;
    my $Regions               = $GetEventRuleResponse->Regions;
    my $Source                = $GetEventRuleResponse->Source;
    my $StatusSummaryByRegion = $GetEventRuleResponse->StatusSummaryByRegion;

    # Returns a L<Paws::Notifications::GetEventRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/GetEventRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the C<EventRule> to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEventRule in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

