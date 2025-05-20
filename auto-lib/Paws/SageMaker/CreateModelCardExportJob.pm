
package Paws::SageMaker::CreateModelCardExportJob;
  use Moose;
  has ModelCardExportJobName => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardName => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardVersion => (is => 'ro', isa => 'Int');
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelCardExportOutputConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModelCardExportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateModelCardExportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelCardExportJob - Arguments for method CreateModelCardExportJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModelCardExportJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateModelCardExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModelCardExportJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateModelCardExportJobResponse =
      $api . sagemaker->CreateModelCardExportJob(
      ModelCardExportJobName => 'MyEntityName',
      ModelCardName          => 'MyModelCardNameOrArn',
      OutputConfig           => {
        S3OutputPath => 'MyS3Uri',    # max: 1024

      },
      ModelCardVersion => 1,          # OPTIONAL
      );

    # Results:
    my $ModelCardExportJobArn =
      $CreateModelCardExportJobResponse->ModelCardExportJobArn;

    # Returns a L<Paws::SageMaker::CreateModelCardExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateModelCardExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelCardExportJobName => Str

The name of the model card export job.



=head2 B<REQUIRED> ModelCardName => Str

The name or Amazon Resource Name (ARN) of the model card to export.



=head2 ModelCardVersion => Int

The version of the model card to export. If a version is not provided,
then the latest version of the model card is exported.



=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::ModelCardExportOutputConfig>

The model card output configuration that specifies the Amazon S3 path
for exporting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModelCardExportJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

