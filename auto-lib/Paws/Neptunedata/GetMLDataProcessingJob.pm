
package Paws::Neptunedata::GetMLDataProcessingJob;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has NeptuneIamRoleArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'neptuneIamRoleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMLDataProcessingJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ml/dataprocessing/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::GetMLDataProcessingJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetMLDataProcessingJob - Arguments for method GetMLDataProcessingJob on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMLDataProcessingJob on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method GetMLDataProcessingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMLDataProcessingJob.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $GetMLDataProcessingJobOutput = $neptune -db->GetMLDataProcessingJob(
      Id                => 'MyString',
      NeptuneIamRoleArn => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Id            = $GetMLDataProcessingJobOutput->Id;
    my $ProcessingJob = $GetMLDataProcessingJobOutput->ProcessingJob;
    my $Status        = $GetMLDataProcessingJobOutput->Status;

    # Returns a L<Paws::Neptunedata::GetMLDataProcessingJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/GetMLDataProcessingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier of the data-processing job to be retrieved.



=head2 NeptuneIamRoleArn => Str

The ARN of an IAM role that provides Neptune access to SageMaker and
Amazon S3 resources. This must be listed in your DB cluster parameter
group or an error will occur.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMLDataProcessingJob in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

