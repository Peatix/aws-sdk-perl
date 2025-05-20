
package Paws::SageMakerGeospatial::StopEarthObservationJob;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopEarthObservationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/earth-observation-jobs/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::StopEarthObservationJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::StopEarthObservationJob - Arguments for method StopEarthObservationJob on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopEarthObservationJob on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method StopEarthObservationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopEarthObservationJob.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $StopEarthObservationJobOutput =
      $sagemaker -geospatial->StopEarthObservationJob(
      Arn => 'MyEarthObservationJobArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/StopEarthObservationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the Earth Observation job being
stopped.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopEarthObservationJob in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

