
package Paws::Wisdom::CreateQuickResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'channels');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Content => (is => 'ro', isa => 'Paws::Wisdom::QuickResponseDataProvider', traits => ['NameInRequest'], request_name => 'content', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentType');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has GroupingConfiguration => (is => 'ro', isa => 'Paws::Wisdom::GroupingConfiguration', traits => ['NameInRequest'], request_name => 'groupingConfiguration');
  has IsActive => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isActive');
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has Language => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'language');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ShortcutKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'shortcutKey');
  has Tags => (is => 'ro', isa => 'Paws::Wisdom::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQuickResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/quickResponses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::CreateQuickResponseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::CreateQuickResponse - Arguments for method CreateQuickResponse on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQuickResponse on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method CreateQuickResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQuickResponse.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $CreateQuickResponseResponse = $wisdom->CreateQuickResponse(
      Content => {
        Content => 'MyQuickResponseContent',    # min: 1, max: 1024; OPTIONAL
      },
      KnowledgeBaseId => 'MyUuidOrArn',
      Name            => 'MyQuickResponseName',
      Channels        => [
        'MyChannel', ...                        # min: 1, max: 10
      ],    # OPTIONAL
      ClientToken           => 'MyNonEmptyString',              # OPTIONAL
      ContentType           => 'MyQuickResponseType',           # OPTIONAL
      Description           => 'MyQuickResponseDescription',    # OPTIONAL
      GroupingConfiguration => {
        Criteria => 'MyGroupingCriteria',    # min: 1, max: 100; OPTIONAL
        Values   => [
          'MyGroupingValue', ...             # min: 1, max: 2048
        ],    # OPTIONAL
      },    # OPTIONAL
      IsActive    => 1,                   # OPTIONAL
      Language    => 'MyLanguageCode',    # OPTIONAL
      ShortcutKey => 'MyShortCutKey',     # OPTIONAL
      Tags        => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $QuickResponse = $CreateQuickResponseResponse->QuickResponse;

    # Returns a L<Paws::Wisdom::CreateQuickResponseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateQuickResponse>

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[Str|Undef]

The Amazon Connect channels this quick response applies to.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> Content => L<Paws::Wisdom::QuickResponseDataProvider>

The content of the quick response.



=head2 ContentType => Str

The media type of the quick response content.

=over

=item *

Use C<application/x.quickresponse;format=plain> for a quick response
written in plain text.

=item *

Use C<application/x.quickresponse;format=markdown> for a quick response
written in richtext.

=back




=head2 Description => Str

The description of the quick response.



=head2 GroupingConfiguration => L<Paws::Wisdom::GroupingConfiguration>

The configuration information of the user groups that the quick
response is accessible to.



=head2 IsActive => Bool

Whether the quick response is active.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. This should not be a
QUICK_RESPONSES type knowledge base if you're storing Wisdom Content
resource to it. Can be either the ID or the ARN. URLs cannot contain
the ARN.



=head2 Language => Str

The language code value for the language in which the quick response is
written. The supported language codes include C<de_DE>, C<en_US>,
C<es_ES>, C<fr_FR>, C<id_ID>, C<it_IT>, C<ja_JP>, C<ko_KR>, C<pt_BR>,
C<zh_CN>, C<zh_TW>



=head2 B<REQUIRED> Name => Str

The name of the quick response.



=head2 ShortcutKey => Str

The shortcut key of the quick response. The value should be unique
across the knowledge base.



=head2 Tags => L<Paws::Wisdom::Tags>

The tags used to organize, track, or control access for this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQuickResponse in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

