
package Paws::SSM::CreateDocument;
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::SSM::AttachmentsSource]');
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has DisplayName => (is => 'ro', isa => 'Str');
  has DocumentFormat => (is => 'ro', isa => 'Str');
  has DocumentType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Requires => (is => 'ro', isa => 'ArrayRef[Paws::SSM::DocumentRequires]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Tag]');
  has TargetType => (is => 'ro', isa => 'Str');
  has VersionName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateDocumentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateDocument - Arguments for method CreateDocument on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDocument on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method CreateDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDocument.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $CreateDocumentResult = $ssm->CreateDocument(
      Content     => 'MyDocumentContent',
      Name        => 'MyDocumentName',
      Attachments => [
        {
          Key => 'SourceUrl'
          ,    # values: SourceUrl, S3FileUrl, AttachmentReference; OPTIONAL
          Name   => 'MyAttachmentIdentifier',    # OPTIONAL
          Values => [
            'MyAttachmentsSourceValue', ...      # min: 1, max: 1024
          ],    # min: 1, max: 1; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DisplayName    => 'MyDocumentDisplayName',    # OPTIONAL
      DocumentFormat => 'YAML',                     # OPTIONAL
      DocumentType   => 'Command',                  # OPTIONAL
      Requires       => [
        {
          Name        => 'MyDocumentARN',
          RequireType => 'MyRequireType',            # max: 128; OPTIONAL
          Version     => 'MyDocumentVersion',        # OPTIONAL
          VersionName => 'MyDocumentVersionName',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TargetType  => 'MyTargetType',             # OPTIONAL
      VersionName => 'MyDocumentVersionName',    # OPTIONAL
    );

    # Results:
    my $DocumentDescription = $CreateDocumentResult->DocumentDescription;

    # Returns a L<Paws::SSM::CreateDocumentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/CreateDocument>

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[L<Paws::SSM::AttachmentsSource>]

A list of key-value pairs that describe attachments to a version of a
document.



=head2 B<REQUIRED> Content => Str

The content for the new SSM document in JSON or YAML format. The
content of the document must not exceed 64KB. This quota also includes
the content specified for input parameters at runtime. We recommend
storing the contents for your new document in an external JSON or YAML
file and referencing the file in a command.

For examples, see the following topics in the I<Amazon Web Services
Systems Manager User Guide>.

=over

=item *

Create an SSM document (console)
(https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-using.html#create-ssm-console)

=item *

Create an SSM document (command line)
(https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-using.html#create-ssm-document-cli)

=item *

Create an SSM document (API)
(https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-using.html#create-ssm-document-api)

=back




=head2 DisplayName => Str

An optional field where you can specify a friendly name for the SSM
document. This value can differ for each version of the document. You
can update this value at a later time using the UpdateDocument
operation.



=head2 DocumentFormat => Str

Specify the document format for the request. The document format can be
JSON, YAML, or TEXT. JSON is the default format.

Valid values are: C<"YAML">, C<"JSON">, C<"TEXT">

=head2 DocumentType => Str

The type of document to create.

The C<DeploymentStrategy> document type is an internal-use-only
document type reserved for AppConfig.

Valid values are: C<"Command">, C<"Policy">, C<"Automation">, C<"Session">, C<"Package">, C<"ApplicationConfiguration">, C<"ApplicationConfigurationSchema">, C<"DeploymentStrategy">, C<"ChangeCalendar">, C<"Automation.ChangeTemplate">, C<"ProblemAnalysis">, C<"ProblemAnalysisTemplate">, C<"CloudFormation">, C<"ConformancePackTemplate">, C<"QuickSetup">, C<"ManualApprovalPolicy">, C<"AutoApprovalPolicy">

=head2 B<REQUIRED> Name => Str

A name for the SSM document.

You can't use the following strings as document name prefixes. These
are reserved by Amazon Web Services for use as document name prefixes:

=over

=item *

C<aws>

=item *

C<amazon>

=item *

C<amzn>

=item *

C<AWSEC2>

=item *

C<AWSConfigRemediation>

=item *

C<AWSSupport>

=back




=head2 Requires => ArrayRef[L<Paws::SSM::DocumentRequires>]

A list of SSM documents required by a document. This parameter is used
exclusively by AppConfig. When a user creates an AppConfig
configuration in an SSM document, the user must also specify a required
document for validation purposes. In this case, an
C<ApplicationConfiguration> document requires an
C<ApplicationConfigurationSchema> document for validation purposes. For
more information, see What is AppConfig?
(https://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html)
in the I<AppConfig User Guide>.



=head2 Tags => ArrayRef[L<Paws::SSM::Tag>]

Optional metadata that you assign to a resource. Tags enable you to
categorize a resource in different ways, such as by purpose, owner, or
environment. For example, you might want to tag an SSM document to
identify the types of targets or the environment where it will run. In
this case, you could specify the following key-value pairs:

=over

=item *

C<Key=OS,Value=Windows>

=item *

C<Key=Environment,Value=Production>

=back

To add tags to an existing SSM document, use the AddTagsToResource
operation.



=head2 TargetType => Str

Specify a target type to define the kinds of resources the document can
run on. For example, to run a document on EC2 instances, specify the
following value: C</AWS::EC2::Instance>. If you specify a value of '/'
the document can run on all types of resources. If you don't specify a
value, the document can't run on any resources. For a list of valid
resource types, see Amazon Web Services resource and property types
reference
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
in the I<CloudFormation User Guide>.



=head2 VersionName => Str

An optional field specifying the version of the artifact you are
creating with the document. For example, C<Release12.1>. This value is
unique across all versions of a document, and can't be changed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDocument in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

