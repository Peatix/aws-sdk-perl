
package Paws::M2::CreateDataSetExportTask;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ExportConfig => (is => 'ro', isa => 'Paws::M2::DataSetExportConfig', traits => ['NameInRequest'], request_name => 'exportConfig', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataSetExportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/dataset-export-task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::CreateDataSetExportTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::CreateDataSetExportTask - Arguments for method CreateDataSetExportTask on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataSetExportTask on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method CreateDataSetExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataSetExportTask.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $CreateDataSetExportTaskResponse = $m2->CreateDataSetExportTask(
      ApplicationId => 'MyIdentifier',
      ExportConfig  => {
        DataSets => [
          {
            DatasetName      => 'MyString200',
            ExternalLocation => {
              S3Location => 'MyString2000',    # OPTIONAL
            },

          },
          ...
        ],    # min: 1, max: 1024; OPTIONAL
        S3Location => 'MyString',    # OPTIONAL
      },
      ClientToken => 'MyClientToken',    # OPTIONAL
      KmsKeyId    => 'MyKMSKeyId',       # OPTIONAL
    );

    # Results:
    my $TaskId = $CreateDataSetExportTaskResponse->TaskId;

    # Returns a L<Paws::M2::CreateDataSetExportTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/CreateDataSetExportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application for which you want to export
data sets.



=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request to create a data set export. The service generates the
clientToken when the API call is triggered. The token expires after one
hour, so if you retry the API within this timeframe with the same
clientToken, you will get the same response. The service also handles
deleting the clientToken after it expires.



=head2 B<REQUIRED> ExportConfig => L<Paws::M2::DataSetExportConfig>

The data set export task configuration.



=head2 KmsKeyId => Str

The identifier of a customer managed key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataSetExportTask in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

