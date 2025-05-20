
package Paws::QConnect::StartImportJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ExternalSourceConfiguration => (is => 'ro', isa => 'Paws::QConnect::ExternalSourceConfiguration', traits => ['NameInRequest'], request_name => 'externalSourceConfiguration');
  has ImportJobType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importJobType', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::QConnect::ContentMetadata', traits => ['NameInRequest'], request_name => 'metadata');
  has UploadId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/importJobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::StartImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::StartImportJob - Arguments for method StartImportJob on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartImportJob on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method StartImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartImportJob.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $StartImportJobResponse = $wisdom->StartImportJob(
      ImportJobType               => 'QUICK_RESPONSES',
      KnowledgeBaseId             => 'MyUuidOrArn',
      UploadId                    => 'MyUploadId',
      ClientToken                 => 'MyNonEmptyString',    # OPTIONAL
      ExternalSourceConfiguration => {
        Configuration => {
          ConnectConfiguration => {
            InstanceId => 'MyNonEmptyString',    # min: 1, max: 4096
          },    # OPTIONAL
        },
        Source => 'AMAZON_CONNECT',    # values: AMAZON_CONNECT

      },    # OPTIONAL
      Metadata => {
        'MyNonEmptyString' =>
          'MyNonEmptyString', # key: min: 1, max: 4096, value: min: 1, max: 4096
      },    # OPTIONAL
    );

    # Results:
    my $ImportJob = $StartImportJobResponse->ImportJob;

    # Returns a L<Paws::QConnect::StartImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/StartImportJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The tags used to organize, track, or control access for this resource.



=head2 ExternalSourceConfiguration => L<Paws::QConnect::ExternalSourceConfiguration>

The configuration information of the external source that the resource
data are imported from.



=head2 B<REQUIRED> ImportJobType => Str

The type of the import job.

=over

=item *

For importing quick response resource, set the value to
C<QUICK_RESPONSES>.

=back


Valid values are: C<"QUICK_RESPONSES">

=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. Can be either the ID or the ARN.
URLs cannot contain the ARN.

=over

=item *

For importing Amazon Q in Connect quick responses, this should be a
C<QUICK_RESPONSES> type knowledge base.

=back




=head2 Metadata => L<Paws::QConnect::ContentMetadata>

The metadata fields of the imported Amazon Q in Connect resources.



=head2 B<REQUIRED> UploadId => Str

A pointer to the uploaded asset. This value is returned by
StartContentUpload
(https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartImportJob in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

