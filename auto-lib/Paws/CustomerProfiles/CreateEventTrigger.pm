
package Paws::CustomerProfiles::CreateEventTrigger;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has EventTriggerConditions => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::EventTriggerCondition]', required => 1);
  has EventTriggerLimits => (is => 'ro', isa => 'Paws::CustomerProfiles::EventTriggerLimits');
  has EventTriggerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EventTriggerName', required => 1);
  has ObjectTypeName => (is => 'ro', isa => 'Str', required => 1);
  has SegmentFilter => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventTrigger');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/event-triggers/{EventTriggerName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::CreateEventTriggerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateEventTrigger - Arguments for method CreateEventTrigger on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventTrigger on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method CreateEventTrigger.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventTrigger.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $CreateEventTriggerResponse = $profile->CreateEventTrigger(
      DomainName             => 'Myname',
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
      ],
      EventTriggerName   => 'Myname',
      ObjectTypeName     => 'MytypeName',
      Description        => 'MysensitiveText',    # OPTIONAL
      EventTriggerLimits => {
        EventExpiration => 1,                     # OPTIONAL
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
      SegmentFilter => 'Myname',    # OPTIONAL
      Tags          => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreatedAt   = $CreateEventTriggerResponse->CreatedAt;
    my $Description = $CreateEventTriggerResponse->Description;
    my $EventTriggerConditions =
      $CreateEventTriggerResponse->EventTriggerConditions;
    my $EventTriggerLimits = $CreateEventTriggerResponse->EventTriggerLimits;
    my $EventTriggerName   = $CreateEventTriggerResponse->EventTriggerName;
    my $LastUpdatedAt      = $CreateEventTriggerResponse->LastUpdatedAt;
    my $ObjectTypeName     = $CreateEventTriggerResponse->ObjectTypeName;
    my $SegmentFilter      = $CreateEventTriggerResponse->SegmentFilter;
    my $Tags               = $CreateEventTriggerResponse->Tags;

    # Returns a L<Paws::CustomerProfiles::CreateEventTriggerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/CreateEventTrigger>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the event trigger.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> EventTriggerConditions => ArrayRef[L<Paws::CustomerProfiles::EventTriggerCondition>]

A list of conditions that determine when an event should trigger the
destination.



=head2 EventTriggerLimits => L<Paws::CustomerProfiles::EventTriggerLimits>

Defines limits controlling whether an event triggers the destination,
based on ingestion latency and the number of invocations per profile
over specific time periods.



=head2 B<REQUIRED> EventTriggerName => Str

The unique name of the event trigger.



=head2 B<REQUIRED> ObjectTypeName => Str

The unique name of the object type.



=head2 SegmentFilter => Str

The destination is triggered only for profiles that meet the criteria
of a segment definition.



=head2 Tags => L<Paws::CustomerProfiles::TagMap>

An array of key-value pairs to apply to this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventTrigger in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

