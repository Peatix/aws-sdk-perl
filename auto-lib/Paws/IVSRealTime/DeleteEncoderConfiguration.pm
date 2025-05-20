
package Paws::IVSRealTime::DeleteEncoderConfiguration;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEncoderConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteEncoderConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::DeleteEncoderConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::DeleteEncoderConfiguration - Arguments for method DeleteEncoderConfiguration on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEncoderConfiguration on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method DeleteEncoderConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEncoderConfiguration.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $DeleteEncoderConfigurationResponse =
      $ivsrealtime->DeleteEncoderConfiguration(
      Arn => 'MyEncoderConfigurationArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/DeleteEncoderConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

ARN of the EncoderConfiguration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEncoderConfiguration in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

