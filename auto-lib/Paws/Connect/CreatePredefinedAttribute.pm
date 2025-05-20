
package Paws::Connect::CreatePredefinedAttribute;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'Paws::Connect::PredefinedAttributeValues', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePredefinedAttribute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/predefined-attributes/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreatePredefinedAttribute - Arguments for method CreatePredefinedAttribute on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePredefinedAttribute on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreatePredefinedAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePredefinedAttribute.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->CreatePredefinedAttribute(
      InstanceId => 'MyInstanceId',
      Name       => 'MyPredefinedAttributeName',
      Values     => {
        StringList => [
          'MyPredefinedAttributeStringValue', ...    # min: 1, max: 64
        ],    # min: 1, max: 128; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreatePredefinedAttribute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> Name => Str

The name of the predefined attribute.



=head2 B<REQUIRED> Values => L<Paws::Connect::PredefinedAttributeValues>

The values of the predefined attribute.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePredefinedAttribute in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

