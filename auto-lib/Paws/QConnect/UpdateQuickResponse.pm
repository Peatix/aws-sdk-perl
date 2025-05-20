
package Paws::QConnect::UpdateQuickResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'channels');
  has Content => (is => 'ro', isa => 'Paws::QConnect::QuickResponseDataProvider', traits => ['NameInRequest'], request_name => 'content');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentType');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has GroupingConfiguration => (is => 'ro', isa => 'Paws::QConnect::GroupingConfiguration', traits => ['NameInRequest'], request_name => 'groupingConfiguration');
  has IsActive => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isActive');
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has Language => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'language');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has QuickResponseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'quickResponseId', required => 1);
  has RemoveDescription => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'removeDescription');
  has RemoveGroupingConfiguration => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'removeGroupingConfiguration');
  has RemoveShortcutKey => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'removeShortcutKey');
  has ShortcutKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'shortcutKey');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQuickResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::UpdateQuickResponseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateQuickResponse - Arguments for method UpdateQuickResponse on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQuickResponse on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method UpdateQuickResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQuickResponse.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $UpdateQuickResponseResponse = $wisdom->UpdateQuickResponse(
      KnowledgeBaseId => 'MyUuidOrArn',
      QuickResponseId => 'MyUuidOrArn',
      Channels        => [
        'MyChannel', ...    # min: 1, max: 10
      ],    # OPTIONAL
      Content => {
        Content => 'MyQuickResponseContent',    # min: 1, max: 1024; OPTIONAL
      },    # OPTIONAL
      ContentType           => 'MyQuickResponseType',           # OPTIONAL
      Description           => 'MyQuickResponseDescription',    # OPTIONAL
      GroupingConfiguration => {
        Criteria => 'MyGroupingCriteria',    # min: 1, max: 100; OPTIONAL
        Values   => [
          'MyGroupingValue', ...             # min: 1, max: 2048
        ],    # OPTIONAL
      },    # OPTIONAL
      IsActive                    => 1,                        # OPTIONAL
      Language                    => 'MyLanguageCode',         # OPTIONAL
      Name                        => 'MyQuickResponseName',    # OPTIONAL
      RemoveDescription           => 1,                        # OPTIONAL
      RemoveGroupingConfiguration => 1,                        # OPTIONAL
      RemoveShortcutKey           => 1,                        # OPTIONAL
      ShortcutKey                 => 'MyShortCutKey',          # OPTIONAL
    );

    # Results:
    my $QuickResponse = $UpdateQuickResponseResponse->QuickResponse;

    # Returns a L<Paws::QConnect::UpdateQuickResponseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/UpdateQuickResponse>

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[Str|Undef]

The Amazon Connect contact channels this quick response applies to. The
supported contact channel types include C<Chat>.



=head2 Content => L<Paws::QConnect::QuickResponseDataProvider>

The updated content of the quick response.



=head2 ContentType => Str

The media type of the quick response content.

=over

=item *

Use C<application/x.quickresponse;format=plain> for quick response
written in plain text.

=item *

Use C<application/x.quickresponse;format=markdown> for quick response
written in richtext.

=back




=head2 Description => Str

The updated description of the quick response.



=head2 GroupingConfiguration => L<Paws::QConnect::GroupingConfiguration>

The updated grouping configuration of the quick response.



=head2 IsActive => Bool

Whether the quick response is active.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. Can be either the ID or the ARN.
URLs cannot contain the ARN.



=head2 Language => Str

The language code value for the language in which the quick response is
written. The supported language codes include C<de_DE>, C<en_US>,
C<es_ES>, C<fr_FR>, C<id_ID>, C<it_IT>, C<ja_JP>, C<ko_KR>, C<pt_BR>,
C<zh_CN>, C<zh_TW>



=head2 Name => Str

The name of the quick response.



=head2 B<REQUIRED> QuickResponseId => Str

The identifier of the quick response.



=head2 RemoveDescription => Bool

Whether to remove the description from the quick response.



=head2 RemoveGroupingConfiguration => Bool

Whether to remove the grouping configuration of the quick response.



=head2 RemoveShortcutKey => Bool

Whether to remove the shortcut key of the quick response.



=head2 ShortcutKey => Str

The shortcut key of the quick response. The value should be unique
across the knowledge base.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQuickResponse in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

