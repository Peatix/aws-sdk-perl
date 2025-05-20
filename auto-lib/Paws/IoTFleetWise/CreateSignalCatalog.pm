
package Paws::IoTFleetWise::CreateSignalCatalog;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Nodes => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::Node]', traits => ['NameInRequest'], request_name => 'nodes' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSignalCatalog');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::CreateSignalCatalogResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::CreateSignalCatalog - Arguments for method CreateSignalCatalog on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSignalCatalog on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method CreateSignalCatalog.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSignalCatalog.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $CreateSignalCatalogResponse = $iotfleetwise->CreateSignalCatalog(
      Name        => 'MyresourceName',
      Description => 'Mydescription',    # OPTIONAL
      Nodes       => [
        {
          Actuator => {
            DataType => 'INT8'
            , # values: INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
            FullyQualifiedName =>
              'MyActuatorFullyQualifiedNameString',    # min: 1, max: 150
            AllowedValues => [ 'Mystring', ... ],  # OPTIONAL
            AssignedValue => 'Mystring',
            Comment       => 'Mymessage',          # min: 1, max: 2048; OPTIONAL
            DeprecationMessage => 'Mymessage',     # min: 1, max: 2048; OPTIONAL
            Description        => 'Mydescription', # min: 1, max: 2048
            Max                => 1,               # OPTIONAL
            Min                => 1,               # OPTIONAL
            StructFullyQualifiedName =>
              'MyNodePath',                        # min: 1, max: 150; OPTIONAL
            Unit => 'Mystring',
          },    # OPTIONAL
          Attribute => {
            DataType => 'INT8'
            , # values: INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
            FullyQualifiedName =>
              'MyAttributeFullyQualifiedNameString',    # min: 1, max: 150
            AllowedValues => [ 'Mystring', ... ],  # OPTIONAL
            AssignedValue => 'Mystring',
            Comment       => 'Mymessage',          # min: 1, max: 2048; OPTIONAL
            DefaultValue  => 'Mystring',
            DeprecationMessage => 'Mymessage',     # min: 1, max: 2048; OPTIONAL
            Description        => 'Mydescription', # min: 1, max: 2048
            Max                => 1,               # OPTIONAL
            Min                => 1,               # OPTIONAL
            Unit               => 'Mystring',
          },    # OPTIONAL
          Branch => {
            FullyQualifiedName =>
              'MyBranchFullyQualifiedNameString',    # min: 1, max: 150
            Comment            => 'Mymessage',     # min: 1, max: 2048; OPTIONAL
            DeprecationMessage => 'Mymessage',     # min: 1, max: 2048; OPTIONAL
            Description        => 'Mydescription', # min: 1, max: 2048
          },    # OPTIONAL
          Property => {
            DataType => 'INT8'
            , # values: INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
            FullyQualifiedName =>
              'MyCustomPropertyFullyQualifiedNameString',    # min: 1, max: 150
            Comment            => 'Mymessage', # min: 1, max: 2048; OPTIONAL
            DataEncoding       => 'BINARY',    # values: BINARY, TYPED; OPTIONAL
            DeprecationMessage => 'Mymessage', # min: 1, max: 2048; OPTIONAL
            Description              => 'Mydescription',    # min: 1, max: 2048
            StructFullyQualifiedName =>
              'MyNodePath',    # min: 1, max: 150; OPTIONAL
          },    # OPTIONAL
          Sensor => {
            DataType => 'INT8'
            , # values: INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
            FullyQualifiedName =>
              'MySensorFullyQualifiedNameString',    # min: 1, max: 150
            AllowedValues => [ 'Mystring', ... ],  # OPTIONAL
            Comment       => 'Mymessage',          # min: 1, max: 2048; OPTIONAL
            DeprecationMessage => 'Mymessage',     # min: 1, max: 2048; OPTIONAL
            Description        => 'Mydescription', # min: 1, max: 2048
            Max                => 1,               # OPTIONAL
            Min                => 1,               # OPTIONAL
            StructFullyQualifiedName =>
              'MyNodePath',                        # min: 1, max: 150; OPTIONAL
            Unit => 'Mystring',
          },    # OPTIONAL
          Struct => {
            FullyQualifiedName =>
              'MyCustomStructFullyQualifiedNameString',    # min: 1, max: 150
            Comment            => 'Mymessage',     # min: 1, max: 2048; OPTIONAL
            DeprecationMessage => 'Mymessage',     # min: 1, max: 2048; OPTIONAL
            Description        => 'Mydescription', # min: 1, max: 2048
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn  = $CreateSignalCatalogResponse->Arn;
    my $Name = $CreateSignalCatalogResponse->Name;

    # Returns a L<Paws::IoTFleetWise::CreateSignalCatalogResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/CreateSignalCatalog>

=head1 ATTRIBUTES


=head2 Description => Str

A brief description of the signal catalog.



=head2 B<REQUIRED> Name => Str

The name of the signal catalog to create.



=head2 Nodes => ArrayRef[L<Paws::IoTFleetWise::Node>]

A list of information about nodes, which are a general abstraction of
signals. For more information, see the API data type.



=head2 Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]

Metadata that can be used to manage the signal catalog.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSignalCatalog in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

