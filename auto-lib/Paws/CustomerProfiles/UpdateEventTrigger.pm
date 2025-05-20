
package Paws::CustomerProfiles::UpdateEventTrigger;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has EventTriggerConditions => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::EventTriggerCondition]');
  has EventTriggerLimits => (is => 'ro', isa => 'Paws::CustomerProfiles::EventTriggerLimits');
  has EventTriggerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EventTriggerName', required => 1);
  has ObjectTypeName => (is => 'ro', isa => 'Str');
  has SegmentFilter => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEventTrigger');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/event-triggers/{EventTriggerName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::UpdateEventTriggerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::UpdateEventTrigger - Arguments for method UpdateEventTrigger on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventTrigger on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method UpdateEventTrigger.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventTrigger.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $UpdateEventTriggerResponse = $profile->UpdateEventTrigger(
      DomainName             => 'Myname',
      EventTriggerName       => 'Myname',
      Description            => 'MysensitiveText',    # OPTIONAL
      EventTriggerConditions => [
        {
          EventTriggerDimensions => [
            {
              ObjectAttributes => [
                {
                  ComparisonOperator => 'INCLUSIVE'
                  , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, EQUAL, BEFORE, AFTER, ON, BETWEEN, NOT_BETWEEN
                  Values => [
                    'Mystring1To255', ...    # min: 1, max: 255
                  ],    # min: 1, max: 10
                  FieldName => 'MyfieldName',    # min: 1, max: 64; OPTIONAL
                  Source    => 'Mytext',         # min: 1, max: 1000; OPTIONAL
                },
                ...
              ],    # min: 1, max: 10

            },
            ...
          ],    # min: 1, max: 10
          LogicalOperator => 'ANY',    # values: ANY, ALL, NONE

        },
        ...
      ],    # OPTIONAL
      EventTriggerLimits => {
        EventExpiration => 1,    # OPTIONAL
        Periods         => [
          {
            Unit  => 'HOURS',    # values: HOURS, DAYS, WEEKS, MONTHS
            Value => 1,          # min: 1, max: 24
            MaxInvocationsPerProfile => 1,    # min: 1, max: 1000; OPTIONAL
            Unlimited                => 1,    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 4; OPTIONAL
      },    # OPTIONAL
      ObjectTypeName => 'MytypeName',    # OPTIONAL
      SegmentFilter  => 'Myname',        # OPTIONAL
    );

    # Results:
    my $CreatedAt   = $UpdateEventTriggerResponse->CreatedAt;
    my $Description = $UpdateEventTriggerResponse->Description;
    my $EventTriggerConditions =
      $UpdateEventTriggerResponse->EventTriggerConditions;
    my $EventTriggerLimits = $UpdateEventTriggerResponse->EventTriggerLimits;
    my $EventTriggerName   = $UpdateEventTriggerResponse->EventTriggerName;
    my $LastUpdatedAt      = $UpdateEventTriggerResponse->LastUpdatedAt;
    my $ObjectTypeName     = $UpdateEventTriggerResponse->ObjectTypeName;
    my $SegmentFilter      = $UpdateEventTriggerResponse->SegmentFilter;
    my $Tags               = $UpdateEventTriggerResponse->Tags;

    # Returns a L<Paws::CustomerProfiles::UpdateEventTriggerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/UpdateEventTrigger>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the event trigger.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 EventTriggerConditions => ArrayRef[L<Paws::CustomerProfiles::EventTriggerCondition>]

A list of conditions that determine when an event should trigger the
destination.



=head2 EventTriggerLimits => L<Paws::CustomerProfiles::EventTriggerLimits>

Defines limits controlling whether an event triggers the destination,
based on ingestion latency and the number of invocations per profile
over specific time periods.



=head2 B<REQUIRED> EventTriggerName => Str

The unique name of the event trigger.



=head2 ObjectTypeName => Str

The unique name of the object type.



=head2 SegmentFilter => Str

The destination is triggered only for profiles that meet the criteria
of a segment definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventTrigger in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

