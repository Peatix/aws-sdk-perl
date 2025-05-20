
package Paws::SnowDeviceManagement::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SnowDeviceManagement::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::TagResource - Arguments for method TagResource on L<Paws::SnowDeviceManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Snow Device Management|Paws::SnowDeviceManagement> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $snow-device-management = Paws->service('SnowDeviceManagement');
    $snow -device-management->TagResource(
      ResourceArn => 'MyString',
      Tags        => { 'MyString' => 'MyString', },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snow-device-management/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the device or task.



=head2 B<REQUIRED> Tags => L<Paws::SnowDeviceManagement::TagMap>

Optional metadata that you assign to a resource. You can use tags to
categorize a resource in different ways, such as by purpose, owner, or
environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::SnowDeviceManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

