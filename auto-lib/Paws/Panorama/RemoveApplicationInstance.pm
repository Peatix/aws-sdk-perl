
package Paws::Panorama::RemoveApplicationInstance;
  use Moose;
  has ApplicationInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationInstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveApplicationInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/application-instances/{ApplicationInstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::RemoveApplicationInstanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::RemoveApplicationInstance - Arguments for method RemoveApplicationInstance on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveApplicationInstance on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method RemoveApplicationInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveApplicationInstance.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $RemoveApplicationInstanceResponse =
      $panorama->RemoveApplicationInstance(
      ApplicationInstanceId => 'MyApplicationInstanceId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/RemoveApplicationInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationInstanceId => Str

An application instance ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveApplicationInstance in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

