
package Paws::QApps::CreateQApp;
  use Moose;
  has AppDefinition => (is => 'ro', isa => 'Paws::QApps::AppDefinitionInput', traits => ['NameInRequest'], request_name => 'appDefinition', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::QApps::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQApp');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps.create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::CreateQAppOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::CreateQApp - Arguments for method CreateQApp on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQApp on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method CreateQApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQApp.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $CreateQAppOutput = $data . qapps->CreateQApp(
      AppDefinition => {
        Cards => [
          {
            FileUpload => {
              Id    => 'MyUUID',
              Title => 'MyTitle',               # max: 100
              Type  => 'text-input'
              , # values: text-input, q-query, file-upload, q-plugin, form-input
              AllowOverride => 1,               # OPTIONAL
              FileId        => 'MyUUID',
              Filename      => 'MyFilename',    # max: 100; OPTIONAL
            },    # OPTIONAL
            FormInput => {
              Id       => 'MyUUID',
              Metadata => {
                Schema => {

                },

              },
              Title => 'MyTitle',         # max: 100
              Type  => 'text-input'
              , # values: text-input, q-query, file-upload, q-plugin, form-input
              ComputeMode => 'append',    # values: append, replace; OPTIONAL
            },    # OPTIONAL
            QPlugin => {
              Id       => 'MyUUID',
              PluginId => 'MyPluginId',    # min: 36, max: 36
              Prompt   => 'MyPrompt',      # max: 50000
              Title    => 'MyTitle',       # max: 100
              Type     => 'text-input'
              , # values: text-input, q-query, file-upload, q-plugin, form-input
              ActionIdentifier =>
                'MyActionIdentifier',    # min: 1, max: 256; OPTIONAL
            },    # OPTIONAL
            QQuery => {
              Id     => 'MyUUID',
              Prompt => 'MyPrompt',    # max: 50000
              Title  => 'MyTitle',     # max: 100
              Type   => 'text-input'
              , # values: text-input, q-query, file-upload, q-plugin, form-input
              AttributeFilter => {
                AndAllFilters => [ <AttributeFilter>, ... ],    # OPTIONAL
                ContainsAll   => {
                  Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                  Value => {
                    DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                    LongValue       => 1,                        # OPTIONAL
                    StringListValue => [
                      'MyPlatoString', ...    # min: 1, max: 2048
                    ],    # OPTIONAL
                    StringValue => 'MyDocumentAttributeValueStringValueString'
                    ,     # max: 2048; OPTIONAL
                  },

                },    # OPTIONAL
                ContainsAny => {
                  Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                  Value => {
                    DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                    LongValue       => 1,                        # OPTIONAL
                    StringListValue => [
                      'MyPlatoString', ...    # min: 1, max: 2048
                    ],    # OPTIONAL
                    StringValue => 'MyDocumentAttributeValueStringValueString'
                    ,     # max: 2048; OPTIONAL
                  },

                },    # OPTIONAL
                EqualsTo => {
                  Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                  Value => {
                    DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                    LongValue       => 1,                        # OPTIONAL
                    StringListValue => [
                      'MyPlatoString', ...    # min: 1, max: 2048
                    ],    # OPTIONAL
                    StringValue => 'MyDocumentAttributeValueStringValueString'
                    ,     # max: 2048; OPTIONAL
                  },

                },    # OPTIONAL
                GreaterThan => {
                  Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                  Value => {
                    DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                    LongValue       => 1,                        # OPTIONAL
                    StringListValue => [
                      'MyPlatoString', ...    # min: 1, max: 2048
                    ],    # OPTIONAL
                    StringValue => 'MyDocumentAttributeValueStringValueString'
                    ,     # max: 2048; OPTIONAL
                  },

                },    # OPTIONAL
                GreaterThanOrEquals => {
                  Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                  Value => {
                    DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                    LongValue       => 1,                        # OPTIONAL
                    StringListValue => [
                      'MyPlatoString', ...    # min: 1, max: 2048
                    ],    # OPTIONAL
                    StringValue => 'MyDocumentAttributeValueStringValueString'
                    ,     # max: 2048; OPTIONAL
                  },

                },    # OPTIONAL
                LessThan => {
                  Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                  Value => {
                    DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                    LongValue       => 1,                        # OPTIONAL
                    StringListValue => [
                      'MyPlatoString', ...    # min: 1, max: 2048
                    ],    # OPTIONAL
                    StringValue => 'MyDocumentAttributeValueStringValueString'
                    ,     # max: 2048; OPTIONAL
                  },

                },    # OPTIONAL
                LessThanOrEquals => {
                  Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                  Value => {
                    DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                    LongValue       => 1,                        # OPTIONAL
                    StringListValue => [
                      'MyPlatoString', ...    # min: 1, max: 2048
                    ],    # OPTIONAL
                    StringValue => 'MyDocumentAttributeValueStringValueString'
                    ,     # max: 2048; OPTIONAL
                  },

                },    # OPTIONAL
                NotFilter    => <AttributeFilter>,
                OrAllFilters => [ <AttributeFilter>, ... ],    # OPTIONAL
              },    # OPTIONAL
              OutputSource =>
                'approved-sources',    # values: approved-sources, llm; OPTIONAL
            },    # OPTIONAL
            TextInput => {
              Id    => 'MyUUID',
              Title => 'MyTitle',                 # max: 100
              Type  => 'text-input'
              , # values: text-input, q-query, file-upload, q-plugin, form-input
              DefaultValue => 'MyDefault',        # max: 500; OPTIONAL
              Placeholder  => 'MyPlaceholder',    # max: 500; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # max: 20
        InitialPrompt => 'MyInitialPrompt',    # max: 10000; OPTIONAL
      },
      InstanceId  => 'MyInstanceId',
      Title       => 'MyTitle',
      Description => 'MyDescription',                  # OPTIONAL
      Tags        => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $AppArn               = $CreateQAppOutput->AppArn;
    my $AppId                = $CreateQAppOutput->AppId;
    my $AppVersion           = $CreateQAppOutput->AppVersion;
    my $CreatedAt            = $CreateQAppOutput->CreatedAt;
    my $CreatedBy            = $CreateQAppOutput->CreatedBy;
    my $Description          = $CreateQAppOutput->Description;
    my $InitialPrompt        = $CreateQAppOutput->InitialPrompt;
    my $RequiredCapabilities = $CreateQAppOutput->RequiredCapabilities;
    my $Status               = $CreateQAppOutput->Status;
    my $Title                = $CreateQAppOutput->Title;
    my $UpdatedAt            = $CreateQAppOutput->UpdatedAt;
    my $UpdatedBy            = $CreateQAppOutput->UpdatedBy;

    # Returns a L<Paws::QApps::CreateQAppOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/CreateQApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppDefinition => L<Paws::QApps::AppDefinitionInput>

The definition of the new Q App, specifying the cards and flow.



=head2 Description => Str

The description of the new Q App.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 Tags => L<Paws::QApps::TagMap>

Optional tags to associate with the new Q App.



=head2 B<REQUIRED> Title => Str

The title of the new Q App.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQApp in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

