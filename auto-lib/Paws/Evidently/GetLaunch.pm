
package Paws::Evidently::GetLaunch;
  use Moose;
  has Launch => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'launch', required => 1);
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLaunch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/launches/{launch}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::GetLaunchResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::GetLaunch - Arguments for method GetLaunch on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLaunch on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method GetLaunch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLaunch.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $GetLaunchResponse = $evidently->GetLaunch(
      Launch  => 'MyLaunchName',
      Project => 'MyProjectRef',

    );

    # Results:
    my $Launch = $GetLaunchResponse->Launch;

    # Returns a L<Paws::Evidently::GetLaunchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/GetLaunch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Launch => Str

The name of the launch that you want to see the details of.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that contains the launch.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLaunch in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

