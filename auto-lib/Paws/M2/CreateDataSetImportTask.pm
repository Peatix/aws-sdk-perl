
package Paws::M2::CreateDataSetImportTask;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ImportConfig => (is => 'ro', isa => 'Paws::M2::DataSetImportConfig', traits => ['NameInRequest'], request_name => 'importConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataSetImportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/dataset-import-task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::CreateDataSetImportTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::CreateDataSetImportTask - Arguments for method CreateDataSetImportTask on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataSetImportTask on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method CreateDataSetImportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataSetImportTask.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $CreateDataSetImportTaskResponse = $m2->CreateDataSetImportTask(
      ApplicationId => 'MyIdentifier',
      ImportConfig  => {
        DataSets => [
          {
            DataSet => {
              DatasetName => 'MyString',
              DatasetOrg  => {
                Gdg => {
                  Limit           => 1,            # OPTIONAL
                  RollDisposition => 'MyString',
                },    # OPTIONAL
                Po => {
                  Format               => 'MyString',
                  MemberFileExtensions => [ 'MyString20', ... ]
                  ,    # min: 1, max: 10
                  Encoding => 'MyString',
                },    # OPTIONAL
                Ps => {
                  Format   => 'MyString',
                  Encoding => 'MyString',
                },    # OPTIONAL
                Vsam => {
                  Format        => 'MyString',
                  AlternateKeys => [
                    {
                      Length          => 1,            # OPTIONAL
                      Offset          => 1,            # OPTIONAL
                      AllowDuplicates => 1,            # OPTIONAL
                      Name            => 'MyString',
                    },
                    ...
                  ],    # OPTIONAL
                  Compressed => 1,            # OPTIONAL
                  Encoding   => 'MyString',
                  PrimaryKey => {
                    Length => 1,              # OPTIONAL
                    Offset => 1,              # OPTIONAL
                    Name   => 'MyString',
                  },    # OPTIONAL
                },    # OPTIONAL
              },
              RecordLength => {
                Max => 1,    # OPTIONAL
                Min => 1,    # OPTIONAL

              },
              RelativePath => 'MyString',
              StorageType  => 'MyString',
            },
            ExternalLocation => {
              S3Location => 'MyString2000',    # OPTIONAL
            },

          },
          ...
        ],    # min: 1, max: 100; OPTIONAL
        S3Location => 'MyString2000',    # OPTIONAL
      },
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $TaskId = $CreateDataSetImportTaskResponse->TaskId;

    # Returns a L<Paws::M2::CreateDataSetImportTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/CreateDataSetImportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application for which you want to import
data sets.



=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request to create a data set import. The service generates the
clientToken when the API call is triggered. The token expires after one
hour, so if you retry the API within this timeframe with the same
clientToken, you will get the same response. The service also handles
deleting the clientToken after it expires.



=head2 B<REQUIRED> ImportConfig => L<Paws::M2::DataSetImportConfig>

The data set import task configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataSetImportTask in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

