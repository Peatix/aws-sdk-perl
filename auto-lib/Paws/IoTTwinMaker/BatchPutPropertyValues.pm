
package Paws::IoTTwinMaker::BatchPutPropertyValues;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::PropertyValueEntry]', traits => ['NameInRequest'], request_name => 'entries', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutPropertyValues');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/entity-properties');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::BatchPutPropertyValuesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::BatchPutPropertyValues - Arguments for method BatchPutPropertyValues on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchPutPropertyValues on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method BatchPutPropertyValues.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchPutPropertyValues.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $BatchPutPropertyValuesResponse = $iottwinmaker->BatchPutPropertyValues(
      Entries => [
        {
          EntityPropertyReference => {
            PropertyName  => 'MyName',             # min: 1, max: 256
            ComponentName => 'MyName',             # min: 1, max: 256
            ComponentPath => 'MyComponentPath',    # min: 1, max: 2048; OPTIONAL
            EntityId      => 'MyEntityId',         # min: 1, max: 128; OPTIONAL
            ExternalIdProperty => {
              'MyString' =>
                'MyString',    # key: min: 1, max: 256, value: min: 1, max: 256
            },    # OPTIONAL
          },
          PropertyValues => [
            {
              Value => {
                BooleanValue => 1,                 # OPTIONAL
                DoubleValue  => 1,                 # OPTIONAL
                Expression   => 'MyExpression',    # min: 1, max: 316; OPTIONAL
                IntegerValue => 1,                 # OPTIONAL
                ListValue    => [ <DataValue>, ... ],    # max: 50; OPTIONAL
                LongValue    => 1,                       # OPTIONAL
                MapValue     => {
                  'MyString' => <DataValue>,             # key: min: 1, max: 256
                },    # max: 50; OPTIONAL
                RelationshipValue => {
                  TargetComponentName => 'MyName',    # min: 1, max: 256
                  TargetEntityId => 'MyEntityId',   # min: 1, max: 128; OPTIONAL
                },    # OPTIONAL
                StringValue => 'MyString',    # min: 1, max: 256
              },
              Time      => 'MyTime',                # min: 20, max: 35; OPTIONAL
              Timestamp => '1970-01-01T01:00:00',   # OPTIONAL
            },
            ...
          ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],
      WorkspaceId => 'MyId',

    );

    # Results:
    my $ErrorEntries = $BatchPutPropertyValuesResponse->ErrorEntries;

    # Returns a L<Paws::IoTTwinMaker::BatchPutPropertyValuesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/BatchPutPropertyValues>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::IoTTwinMaker::PropertyValueEntry>]

An object that maps strings to the property value entries to set. Each
string in the mapping must be unique to this object.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the properties to set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchPutPropertyValues in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

