
package Paws::QConnect::CreateAssistantAssociation;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has Association => (is => 'ro', isa => 'Paws::QConnect::AssistantAssociationInputData', traits => ['NameInRequest'], request_name => 'association', required => 1);
  has AssociationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'associationType', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Tags => (is => 'ro', isa => 'Paws::QConnect::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssistantAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::CreateAssistantAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateAssistantAssociation - Arguments for method CreateAssistantAssociation on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssistantAssociation on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method CreateAssistantAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssistantAssociation.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $CreateAssistantAssociationResponse =
      $wisdom->CreateAssistantAssociation(
      AssistantId => 'MyUuidOrArn',
      Association => {
        KnowledgeBaseId => 'MyUuid',    # OPTIONAL
      },
      AssociationType => 'KNOWLEDGE_BASE',
      ClientToken     => 'MyClientToken',    # OPTIONAL
      Tags            => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
      );

    # Results:
    my $AssistantAssociation =
      $CreateAssistantAssociationResponse->AssistantAssociation;

    # Returns a L<Paws::QConnect::CreateAssistantAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateAssistantAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant. Can be either the
ID or the ARN. URLs cannot contain the ARN.



=head2 B<REQUIRED> Association => L<Paws::QConnect::AssistantAssociationInputData>

The identifier of the associated resource.



=head2 B<REQUIRED> AssociationType => Str

The type of association.

Valid values are: C<"KNOWLEDGE_BASE">

=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 Tags => L<Paws::QConnect::Tags>

The tags used to organize, track, or control access for this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssistantAssociation in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

