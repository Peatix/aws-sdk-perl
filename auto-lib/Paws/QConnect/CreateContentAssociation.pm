
package Paws::QConnect::CreateContentAssociation;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::QConnect::ContentAssociationContents', traits => ['NameInRequest'], request_name => 'association', required => 1);
  has AssociationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'associationType', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ContentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'contentId', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::QConnect::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContentAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::CreateContentAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateContentAssociation - Arguments for method CreateContentAssociation on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContentAssociation on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method CreateContentAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContentAssociation.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $CreateContentAssociationResponse = $wisdom->CreateContentAssociation(
      Association => {
        AmazonConnectGuideAssociation => {
          FlowId => 'MyGenericArn',    # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
      },
      AssociationType => 'AMAZON_CONNECT_GUIDE',
      ContentId       => 'MyUuidOrArn',
      KnowledgeBaseId => 'MyUuidOrArn',
      ClientToken     => 'MyClientToken',          # OPTIONAL
      Tags            => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ContentAssociation =
      $CreateContentAssociationResponse->ContentAssociation;

    # Returns a L<Paws::QConnect::CreateContentAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateContentAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Association => L<Paws::QConnect::ContentAssociationContents>

The identifier of the associated resource.



=head2 B<REQUIRED> AssociationType => Str

The type of association.

Valid values are: C<"AMAZON_CONNECT_GUIDE">

=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> ContentId => Str

The identifier of the content.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base.



=head2 Tags => L<Paws::QConnect::Tags>

The tags used to organize, track, or control access for this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContentAssociation in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

