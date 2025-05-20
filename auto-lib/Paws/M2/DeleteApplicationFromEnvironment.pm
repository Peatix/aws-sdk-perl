
package Paws::M2::DeleteApplicationFromEnvironment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationFromEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/environment/{environmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::DeleteApplicationFromEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::DeleteApplicationFromEnvironment - Arguments for method DeleteApplicationFromEnvironment on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplicationFromEnvironment on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method DeleteApplicationFromEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplicationFromEnvironment.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $DeleteApplicationFromEnvironmentResponse =
      $m2->DeleteApplicationFromEnvironment(
      ApplicationId => 'MyIdentifier',
      EnvironmentId => 'MyIdentifier',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/DeleteApplicationFromEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application you want to delete.



=head2 B<REQUIRED> EnvironmentId => Str

The unique identifier of the runtime environment where the application
was previously deployed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplicationFromEnvironment in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

