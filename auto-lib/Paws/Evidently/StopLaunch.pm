
package Paws::Evidently::StopLaunch;
  use Moose;
  has DesiredState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desiredState');
  has Launch => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'launch', required => 1);
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopLaunch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/launches/{launch}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::StopLaunchResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::StopLaunch - Arguments for method StopLaunch on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopLaunch on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method StopLaunch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopLaunch.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $StopLaunchResponse = $evidently->StopLaunch(
      Launch       => 'MyLaunchName',
      Project      => 'MyProjectRef',
      DesiredState => 'COMPLETED',        # OPTIONAL
      Reason       => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $EndedTime = $StopLaunchResponse->EndedTime;

    # Returns a L<Paws::Evidently::StopLaunchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/StopLaunch>

=head1 ATTRIBUTES


=head2 DesiredState => Str

Specify whether to consider the launch as C<COMPLETED> or C<CANCELLED>
after it stops.

Valid values are: C<"COMPLETED">, C<"CANCELLED">

=head2 B<REQUIRED> Launch => Str

The name of the launch to stop.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that contains the launch that you want
to stop.



=head2 Reason => Str

A string that describes why you are stopping the launch.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopLaunch in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

