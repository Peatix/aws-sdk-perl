
package Paws::SageMakerGeospatial::DeleteVectorEnrichmentJob;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVectorEnrichmentJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/vector-enrichment-jobs/{Arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::DeleteVectorEnrichmentJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::DeleteVectorEnrichmentJob - Arguments for method DeleteVectorEnrichmentJob on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVectorEnrichmentJob on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method DeleteVectorEnrichmentJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVectorEnrichmentJob.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $DeleteVectorEnrichmentJobOutput =
      $sagemaker -geospatial->DeleteVectorEnrichmentJob(
      Arn => 'MyVectorEnrichmentJobArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/DeleteVectorEnrichmentJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the Vector Enrichment job being
deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVectorEnrichmentJob in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

