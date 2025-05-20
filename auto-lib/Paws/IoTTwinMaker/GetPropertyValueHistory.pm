
package Paws::IoTTwinMaker::GetPropertyValueHistory;
  use Moose;
  has ComponentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentName');
  has ComponentPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentPath');
  has ComponentTypeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentTypeId');
  has EndDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endDateTime');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has EntityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityId');
  has Interpolation => (is => 'ro', isa => 'Paws::IoTTwinMaker::InterpolationParameters', traits => ['NameInRequest'], request_name => 'interpolation');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has OrderByTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'orderByTime');
  has PropertyFilters => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::PropertyFilter]', traits => ['NameInRequest'], request_name => 'propertyFilters');
  has SelectedProperties => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'selectedProperties', required => 1);
  has StartDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startDateTime');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPropertyValueHistory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/entity-properties/history');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::GetPropertyValueHistoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetPropertyValueHistory - Arguments for method GetPropertyValueHistory on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPropertyValueHistory on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method GetPropertyValueHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPropertyValueHistory.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $GetPropertyValueHistoryResponse =
      $iottwinmaker->GetPropertyValueHistory(
      SelectedProperties => [
        'MyString', ...    # min: 1, max: 256
      ],
      WorkspaceId     => 'MyId',
      ComponentName   => 'MyName',                 # OPTIONAL
      ComponentPath   => 'MyComponentPath',        # OPTIONAL
      ComponentTypeId => 'MyComponentTypeId',      # OPTIONAL
      EndDateTime     => '1970-01-01T01:00:00',    # OPTIONAL
      EndTime         => 'MyTime',                 # OPTIONAL
      EntityId        => 'MyEntityId',             # OPTIONAL
      Interpolation   => {
        InterpolationType => 'LINEAR',             # values: LINEAR; OPTIONAL
        IntervalInSeconds => 1,                    # OPTIONAL
      },    # OPTIONAL
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
      OrderByTime     => 'ASCENDING',      # OPTIONAL
      PropertyFilters => [
        {
          Operator     => 'MyString',    # min: 1, max: 256
          PropertyName => 'MyString',    # min: 1, max: 256
          Value        => {
            BooleanValue => 1,                      # OPTIONAL
            DoubleValue  => 1,                      # OPTIONAL
            Expression   => 'MyExpression',         # min: 1, max: 316; OPTIONAL
            IntegerValue => 1,                      # OPTIONAL
            ListValue    => [ <DataValue>, ... ],   # max: 50; OPTIONAL
            LongValue    => 1,                      # OPTIONAL
            MapValue     => {
              'MyString' => <DataValue>,            # key: min: 1, max: 256
            },    # max: 50; OPTIONAL
            RelationshipValue => {
              TargetComponentName => 'MyName',        # min: 1, max: 256
              TargetEntityId      => 'MyEntityId',    # min: 1, max: 128
            },    # OPTIONAL
            StringValue => 'MyString',    # min: 1, max: 256
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      StartDateTime => '1970-01-01T01:00:00',    # OPTIONAL
      StartTime     => 'MyTime',                 # OPTIONAL
      );

    # Results:
    my $NextToken      = $GetPropertyValueHistoryResponse->NextToken;
    my $PropertyValues = $GetPropertyValueHistoryResponse->PropertyValues;

    # Returns a L<Paws::IoTTwinMaker::GetPropertyValueHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/GetPropertyValueHistory>

=head1 ATTRIBUTES


=head2 ComponentName => Str

The name of the component.



=head2 ComponentPath => Str

This string specifies the path to the composite component, starting
from the top-level component.



=head2 ComponentTypeId => Str

The ID of the component type.



=head2 EndDateTime => Str

The date and time of the latest property value to return.



=head2 EndTime => Str

The ISO8601 DateTime of the latest property value to return.

For more information about the ISO8601 DateTime format, see the data
type PropertyValue
(https://docs.aws.amazon.com/iot-twinmaker/latest/apireference/API_PropertyValue.html).



=head2 EntityId => Str

The ID of the entity.



=head2 Interpolation => L<Paws::IoTTwinMaker::InterpolationParameters>

An object that specifies the interpolation type and the interval over
which to interpolate data.



=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 25.

Valid Range: Minimum value of 1. Maximum value of 250.



=head2 NextToken => Str

The string that specifies the next page of results.



=head2 OrderByTime => Str

The time direction to use in the result order.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 PropertyFilters => ArrayRef[L<Paws::IoTTwinMaker::PropertyFilter>]

A list of objects that filter the property value history request.



=head2 B<REQUIRED> SelectedProperties => ArrayRef[Str|Undef]

A list of properties whose value histories the request retrieves.



=head2 StartDateTime => Str

The date and time of the earliest property value to return.



=head2 StartTime => Str

The ISO8601 DateTime of the earliest property value to return.

For more information about the ISO8601 DateTime format, see the data
type PropertyValue
(https://docs.aws.amazon.com/iot-twinmaker/latest/apireference/API_PropertyValue.html).



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPropertyValueHistory in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

