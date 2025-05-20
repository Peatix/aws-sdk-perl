
package Paws::QConnect::UpdateMessageTemplateMetadata;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has GroupingConfiguration => (is => 'ro', isa => 'Paws::QConnect::GroupingConfiguration', traits => ['NameInRequest'], request_name => 'groupingConfiguration');
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has MessageTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageTemplateId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMessageTemplateMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/metadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::UpdateMessageTemplateMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateMessageTemplateMetadata - Arguments for method UpdateMessageTemplateMetadata on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMessageTemplateMetadata on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method UpdateMessageTemplateMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMessageTemplateMetadata.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $UpdateMessageTemplateMetadataResponse =
      $wisdom->UpdateMessageTemplateMetadata(
      KnowledgeBaseId       => 'MyUuidOrArn',
      MessageTemplateId     => 'MyUuidOrArnOrEitherWithQualifier',
      Description           => 'MyDescription',                      # OPTIONAL
      GroupingConfiguration => {
        Criteria => 'MyGroupingCriteria',    # min: 1, max: 100; OPTIONAL
        Values   => [
          'MyGroupingValue', ...             # min: 1, max: 2048
        ],    # OPTIONAL
      },    # OPTIONAL
      Name => 'MyName',    # OPTIONAL
      );

    # Results:
    my $MessageTemplate =
      $UpdateMessageTemplateMetadataResponse->MessageTemplate;

    # Returns a L<Paws::QConnect::UpdateMessageTemplateMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/UpdateMessageTemplateMetadata>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the message template.



=head2 GroupingConfiguration => L<Paws::QConnect::GroupingConfiguration>





=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. Can be either the ID or the ARN.
URLs cannot contain the ARN.



=head2 B<REQUIRED> MessageTemplateId => Str

The identifier of the message template. Can be either the ID or the
ARN. It cannot contain any qualifier.



=head2 Name => Str

The name of the message template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMessageTemplateMetadata in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

