
package Paws::ServiceDiscovery::DeleteServiceAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ServiceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServiceAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::DeleteServiceAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DeleteServiceAttributes - Arguments for method DeleteServiceAttributes on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteServiceAttributes on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method DeleteServiceAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteServiceAttributes.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $DeleteServiceAttributesResponse =
      $servicediscovery->DeleteServiceAttributes(
      Attributes => [
        'MyServiceAttributeKey', ...    # max: 255
      ],
      ServiceId => 'MyResourceId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/DeleteServiceAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[Str|Undef]

A list of keys corresponding to each attribute that you want to delete.



=head2 B<REQUIRED> ServiceId => Str

The ID of the service from which the attributes will be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteServiceAttributes in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

