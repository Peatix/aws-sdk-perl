
package Paws::Omics::StartReadSetImportJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::Omics::StartReadSetImportJobSourceItem]', traits => ['NameInRequest'], request_name => 'sources', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartReadSetImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/importjob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::StartReadSetImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::StartReadSetImportJob - Arguments for method StartReadSetImportJob on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartReadSetImportJob on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method StartReadSetImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartReadSetImportJob.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $StartReadSetImportJobResponse = $omics->StartReadSetImportJob(
      RoleArn         => 'MyRoleArn',
      SequenceStoreId => 'MySequenceStoreId',
      Sources         => [
        {
          SampleId       => 'MySampleId',    # min: 1, max: 127
          SourceFileType => 'FASTQ',         # values: FASTQ, BAM, CRAM, UBAM
          SourceFiles    => {
            Source1 => 'MyS3Uri',
            Source2 => 'MyS3Uri',
          },
          SubjectId     => 'MySubjectId',           # min: 1, max: 127
          Description   => 'MyReadSetDescription',  # min: 1, max: 255; OPTIONAL
          GeneratedFrom => 'MyGeneratedFrom',       # min: 1, max: 127; OPTIONAL
          Name          => 'MyReadSetName',         # min: 1, max: 127; OPTIONAL
          ReferenceArn  => 'MyReferenceArn',        # min: 1, max: 127; OPTIONAL
          Tags          => {
            'MyTagKey' => 'MyTagValue', # key: min: 1, max: 128, value: max: 256
          },    # OPTIONAL
        },
        ...
      ],
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $CreationTime    = $StartReadSetImportJobResponse->CreationTime;
    my $Id              = $StartReadSetImportJobResponse->Id;
    my $RoleArn         = $StartReadSetImportJobResponse->RoleArn;
    my $SequenceStoreId = $StartReadSetImportJobResponse->SequenceStoreId;
    my $Status          = $StartReadSetImportJobResponse->Status;

    # Returns a L<Paws::Omics::StartReadSetImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/StartReadSetImportJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

To ensure that jobs don't run multiple times, specify a unique token
for each job.



=head2 B<REQUIRED> RoleArn => Str

A service role for the job.



=head2 B<REQUIRED> SequenceStoreId => Str

The read set's sequence store ID.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::Omics::StartReadSetImportJobSourceItem>]

The job's source files.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartReadSetImportJob in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

