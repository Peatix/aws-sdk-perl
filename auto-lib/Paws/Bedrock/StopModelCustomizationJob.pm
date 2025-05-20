
package Paws::Bedrock::StopModelCustomizationJob;
  use Moose;
  has JobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopModelCustomizationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model-customization-jobs/{jobIdentifier}/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::StopModelCustomizationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::StopModelCustomizationJob - Arguments for method StopModelCustomizationJob on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopModelCustomizationJob on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method StopModelCustomizationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopModelCustomizationJob.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $StopModelCustomizationJobResponse = $bedrock->StopModelCustomizationJob(
      JobIdentifier => 'MyModelCustomizationJobIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/StopModelCustomizationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobIdentifier => Str

Job identifier of the job to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopModelCustomizationJob in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

