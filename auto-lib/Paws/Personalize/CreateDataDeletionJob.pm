
package Paws::Personalize::CreateDataDeletionJob;
  use Moose;
  has DatasetGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetGroupArn' , required => 1);
  has DataSource => (is => 'ro', isa => 'Paws::Personalize::DataSource', traits => ['NameInRequest'], request_name => 'dataSource' , required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataDeletionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::CreateDataDeletionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDataDeletionJob - Arguments for method CreateDataDeletionJob on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataDeletionJob on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateDataDeletionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataDeletionJob.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateDataDeletionJobResponse = $personalize->CreateDataDeletionJob(
      DataSource => {
        DataLocation => 'MyS3Location',    # max: 256; OPTIONAL
      },
      DatasetGroupArn => 'MyArn',
      JobName         => 'MyName',
      RoleArn         => 'MyRoleArn',
      Tags            => [
        {
          TagKey   => 'MyTagKey',      # min: 1, max: 128
          TagValue => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DataDeletionJobArn = $CreateDataDeletionJobResponse->DataDeletionJobArn;

    # Returns a L<Paws::Personalize::CreateDataDeletionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateDataDeletionJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetGroupArn => Str

The Amazon Resource Name (ARN) of the dataset group that has the
datasets you want to delete records from.



=head2 B<REQUIRED> DataSource => L<Paws::Personalize::DataSource>

The Amazon S3 bucket that contains the list of userIds of the users to
delete.



=head2 B<REQUIRED> JobName => Str

The name for the data deletion job.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that has permissions to
read from the Amazon S3 data source.



=head2 Tags => ArrayRef[L<Paws::Personalize::Tag>]

A list of tags
(https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html)
to apply to the data deletion job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataDeletionJob in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

