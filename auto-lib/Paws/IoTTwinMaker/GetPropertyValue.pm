
package Paws::IoTTwinMaker::GetPropertyValue;
  use Moose;
  has ComponentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentName');
  has ComponentPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentPath');
  has ComponentTypeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentTypeId');
  has EntityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PropertyGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'propertyGroupName');
  has SelectedProperties => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'selectedProperties', required => 1);
  has TabularConditions => (is => 'ro', isa => 'Paws::IoTTwinMaker::TabularConditions', traits => ['NameInRequest'], request_name => 'tabularConditions');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPropertyValue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/entity-properties/value');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::GetPropertyValueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetPropertyValue - Arguments for method GetPropertyValue on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPropertyValue on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method GetPropertyValue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPropertyValue.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $GetPropertyValueResponse = $iottwinmaker->GetPropertyValue(
      SelectedProperties => [
        'MyString', ...    # min: 1, max: 256
      ],
      WorkspaceId       => 'MyId',
      ComponentName     => 'MyName',               # OPTIONAL
      ComponentPath     => 'MyComponentPath',      # OPTIONAL
      ComponentTypeId   => 'MyComponentTypeId',    # OPTIONAL
      EntityId          => 'MyEntityId',           # OPTIONAL
      MaxResults        => 1,                      # OPTIONAL
      NextToken         => 'MyNextToken',          # OPTIONAL
      PropertyGroupName => 'MyName',               # OPTIONAL
      TabularConditions => {
        OrderBy => [
          {
            PropertyName => 'MyString',    # min: 1, max: 256
            Order => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        PropertyFilters => [
          {
            Operator     => 'MyString',    # min: 1, max: 256
            PropertyName => 'MyString',    # min: 1, max: 256
            Value        => {
              BooleanValue => 1,                    # OPTIONAL
              DoubleValue  => 1,                    # OPTIONAL
              Expression   => 'MyExpression',       # min: 1, max: 316; OPTIONAL
              IntegerValue => 1,                    # OPTIONAL
              ListValue    => [ <DataValue>, ... ], # max: 50; OPTIONAL
              LongValue    => 1,                    # OPTIONAL
              MapValue     => {
                'MyString' => <DataValue>,          # key: min: 1, max: 256
              },    # max: 50; OPTIONAL
              RelationshipValue => {
                TargetComponentName => 'MyName',        # min: 1, max: 256
                TargetEntityId      => 'MyEntityId',    # min: 1, max: 128
              },    # OPTIONAL
              StringValue => 'MyString',    # min: 1, max: 256
            },    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $NextToken      = $GetPropertyValueResponse->NextToken;
    my $PropertyValues = $GetPropertyValueResponse->PropertyValues;
    my $TabularPropertyValues =
      $GetPropertyValueResponse->TabularPropertyValues;

    # Returns a L<Paws::IoTTwinMaker::GetPropertyValueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/GetPropertyValue>

=head1 ATTRIBUTES


=head2 ComponentName => Str

The name of the component whose property values the operation returns.



=head2 ComponentPath => Str

This string specifies the path to the composite component, starting
from the top-level component.



=head2 ComponentTypeId => Str

The ID of the component type whose property values the operation
returns.



=head2 EntityId => Str

The ID of the entity whose property values the operation returns.



=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 25.

Valid Range: Minimum value of 1. Maximum value of 250.



=head2 NextToken => Str

The string that specifies the next page of results.



=head2 PropertyGroupName => Str

The property group name.



=head2 B<REQUIRED> SelectedProperties => ArrayRef[Str|Undef]

The properties whose values the operation returns.



=head2 TabularConditions => L<Paws::IoTTwinMaker::TabularConditions>

The tabular conditions.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace whose values the operation returns.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPropertyValue in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

