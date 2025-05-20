
package Paws::Wisdom::CreateKnowledgeBase;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KnowledgeBaseType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'knowledgeBaseType', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RenderingConfiguration => (is => 'ro', isa => 'Paws::Wisdom::RenderingConfiguration', traits => ['NameInRequest'], request_name => 'renderingConfiguration');
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::Wisdom::ServerSideEncryptionConfiguration', traits => ['NameInRequest'], request_name => 'serverSideEncryptionConfiguration');
  has SourceConfiguration => (is => 'ro', isa => 'Paws::Wisdom::SourceConfiguration', traits => ['NameInRequest'], request_name => 'sourceConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::Wisdom::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKnowledgeBase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::CreateKnowledgeBaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::CreateKnowledgeBase - Arguments for method CreateKnowledgeBase on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKnowledgeBase on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method CreateKnowledgeBase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKnowledgeBase.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $CreateKnowledgeBaseResponse = $wisdom->CreateKnowledgeBase(
      KnowledgeBaseType      => 'EXTERNAL',
      Name                   => 'MyName',
      ClientToken            => 'MyNonEmptyString',    # OPTIONAL
      Description            => 'MyDescription',       # OPTIONAL
      RenderingConfiguration => {
        TemplateUri => 'MyUri',    # min: 1, max: 4096; OPTIONAL
      },    # OPTIONAL
      ServerSideEncryptionConfiguration => {
        KmsKeyId => 'MyNonEmptyString',    # min: 1, max: 4096
      },    # OPTIONAL
      SourceConfiguration => {
        AppIntegrations => {
          AppIntegrationArn => 'MyGenericArn',    # min: 1, max: 2048
          ObjectFields      => [
            'MyNonEmptyString', ...               # min: 1, max: 4096
          ],    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $KnowledgeBase = $CreateKnowledgeBaseResponse->KnowledgeBase;

    # Returns a L<Paws::Wisdom::CreateKnowledgeBaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateKnowledgeBase>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 Description => Str

The description.



=head2 B<REQUIRED> KnowledgeBaseType => Str

The type of knowledge base. Only CUSTOM knowledge bases allow you to
upload your own content. EXTERNAL knowledge bases support integrations
with third-party systems whose content is synchronized automatically.

Valid values are: C<"EXTERNAL">, C<"CUSTOM">, C<"QUICK_RESPONSES">

=head2 B<REQUIRED> Name => Str

The name of the knowledge base.



=head2 RenderingConfiguration => L<Paws::Wisdom::RenderingConfiguration>

Information about how to render the content.



=head2 ServerSideEncryptionConfiguration => L<Paws::Wisdom::ServerSideEncryptionConfiguration>

The configuration information for the customer managed key used for
encryption.

This KMS key must have a policy that allows C<kms:CreateGrant>,
C<kms:DescribeKey>, and C<kms:Decrypt/kms:GenerateDataKey> permissions
to the IAM identity using the key to invoke Wisdom.

For more information about setting up a customer managed key for
Wisdom, see Enable Amazon Connect Wisdom for your instance
(https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html).



=head2 SourceConfiguration => L<Paws::Wisdom::SourceConfiguration>

The source of the knowledge base content. Only set this argument for
EXTERNAL knowledge bases.



=head2 Tags => L<Paws::Wisdom::Tags>

The tags used to organize, track, or control access for this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKnowledgeBase in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

