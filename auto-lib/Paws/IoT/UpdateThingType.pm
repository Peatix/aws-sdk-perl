
package Paws::IoT::UpdateThingType;
  use Moose;
  has ThingTypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingTypeName', required => 1);
  has ThingTypeProperties => (is => 'ro', isa => 'Paws::IoT::ThingTypeProperties', traits => ['NameInRequest'], request_name => 'thingTypeProperties');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateThingType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-types/{thingTypeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateThingTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateThingType - Arguments for method UpdateThingType on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateThingType on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateThingType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateThingType.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateThingTypeResponse = $iot->UpdateThingType(
      ThingTypeName       => 'MyThingTypeName',
      ThingTypeProperties => {
        Mqtt5Configuration => {
          PropagatingAttributes => [
            {
              ConnectionAttribute =>
                'MyConnectionAttributeName',    # max: 128; OPTIONAL
              ThingAttribute  => 'MyAttributeName',         # max: 128; OPTIONAL
              UserPropertyKey => 'MyUserPropertyKeyName',   # max: 128; OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        SearchableAttributes => [
          'MyAttributeName', ...    # max: 128; OPTIONAL
        ],    # OPTIONAL
        ThingTypeDescription => 'MyThingTypeDescription',  # max: 2028; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateThingType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThingTypeName => Str

The name of a thing type.



=head2 ThingTypeProperties => L<Paws::IoT::ThingTypeProperties>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateThingType in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

