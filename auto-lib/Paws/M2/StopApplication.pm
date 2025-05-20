
package Paws::M2::StopApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ForceStop => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'forceStop');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::StopApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::StopApplication - Arguments for method StopApplication on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopApplication on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method StopApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopApplication.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $StopApplicationResponse = $m2->StopApplication(
      ApplicationId => 'MyIdentifier',
      ForceStop     => 1,                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/StopApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application you want to stop.



=head2 ForceStop => Bool

Stopping an application process can take a long time. Setting this
parameter to true lets you force stop the application so you don't need
to wait until the process finishes to apply another action on the
application. The default value is false.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopApplication in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

