
package Paws::WorkSpacesWeb::CreateDataProtectionSettings;
  use Moose;
  has AdditionalEncryptionContext => (is => 'ro', isa => 'Paws::WorkSpacesWeb::EncryptionContextMap', traits => ['NameInRequest'], request_name => 'additionalEncryptionContext');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CustomerManagedKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerManagedKey');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has InlineRedactionConfiguration => (is => 'ro', isa => 'Paws::WorkSpacesWeb::InlineRedactionConfiguration', traits => ['NameInRequest'], request_name => 'inlineRedactionConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataProtectionSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataProtectionSettings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::CreateDataProtectionSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::CreateDataProtectionSettings - Arguments for method CreateDataProtectionSettings on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataProtectionSettings on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method CreateDataProtectionSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataProtectionSettings.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $CreateDataProtectionSettingsResponse =
      $workspaces -web->CreateDataProtectionSettings(
      AdditionalEncryptionContext => {
        'MyStringType' => 'MyStringType', # key: max: 131072, value: max: 131072
      },    # OPTIONAL
      ClientToken                  => 'MyClientToken',        # OPTIONAL
      CustomerManagedKey           => 'MykeyArn',             # OPTIONAL
      Description                  => 'MyDescriptionSafe',    # OPTIONAL
      DisplayName                  => 'MyDisplayNameSafe',    # OPTIONAL
      InlineRedactionConfiguration => {
        InlineRedactionPatterns => [
          {
            RedactionPlaceHolder => {
              RedactionPlaceHolderType => 'CustomText',    # values: CustomText
              RedactionPlaceHolderText =>
                'MyRedactionPlaceHolderText',    # min: 1, max: 20; OPTIONAL
            },
            BuiltInPatternId =>
              'MyBuiltInPatternId',              # min: 1, max: 50; OPTIONAL
            ConfidenceLevel => 1,                # min: 1, max: 3; OPTIONAL
            CustomPattern   => {
              PatternName        => 'MyPatternName',        # min: 1, max: 20
              PatternRegex       => 'MyRegex',              # max: 300
              KeywordRegex       => 'MyRegex',              # max: 300
              PatternDescription => 'MyDescriptionSafe',    # min: 1, max: 256
            },    # OPTIONAL
            EnforcedUrls => [ 'MyInlineRedactionUrl', ... ]
            ,     # min: 1, max: 20; OPTIONAL
            ExemptUrls => [ 'MyInlineRedactionUrl', ... ]
            ,     # min: 1, max: 20; OPTIONAL
          },
          ...
        ],    # max: 150
        GlobalConfidenceLevel => 1,    # min: 1, max: 3; OPTIONAL
        GlobalEnforcedUrls    => [ 'MyInlineRedactionUrl', ... ]
        ,                              # min: 1, max: 100; OPTIONAL
        GlobalExemptUrls => [ 'MyInlineRedactionUrl', ... ]
        ,                              # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $DataProtectionSettingsArn =
      $CreateDataProtectionSettingsResponse->DataProtectionSettingsArn;

# Returns a L<Paws::WorkSpacesWeb::CreateDataProtectionSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/CreateDataProtectionSettings>

=head1 ATTRIBUTES


=head2 AdditionalEncryptionContext => L<Paws::WorkSpacesWeb::EncryptionContextMap>

Additional encryption context of the data protection settings.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original
request completes successfully, subsequent retries with the same client
token returns the result from the original successful request.

If you do not specify a client token, one is automatically generated by
the Amazon Web Services SDK.



=head2 CustomerManagedKey => Str

The custom managed key of the data protection settings.



=head2 Description => Str

The description of the data protection settings.



=head2 DisplayName => Str

The display name of the data protection settings.



=head2 InlineRedactionConfiguration => L<Paws::WorkSpacesWeb::InlineRedactionConfiguration>

The inline redaction configuration of the data protection settings that
will be applied to all sessions.



=head2 Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]

The tags to add to the data protection settings resource. A tag is a
key-value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataProtectionSettings in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

