
package Paws::QApps::UpdateQApp;
  use Moose;
  has AppDefinition => (is => 'ro', isa => 'Paws::QApps::AppDefinitionInput', traits => ['NameInRequest'], request_name => 'appDefinition');
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQApp');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps.update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::UpdateQAppOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::UpdateQApp - Arguments for method UpdateQApp on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQApp on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method UpdateQApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQApp.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $UpdateQAppOutput = $data . qapps->UpdateQApp(
      AppId         => 'MyUUID',
      InstanceId    => 'MyInstanceId',
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
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      Title       => 'MyTitle',          # OPTIONAL
    );

    # Results:
    my $AppArn               = $UpdateQAppOutput->AppArn;
    my $AppId                = $UpdateQAppOutput->AppId;
    my $AppVersion           = $UpdateQAppOutput->AppVersion;
    my $CreatedAt            = $UpdateQAppOutput->CreatedAt;
    my $CreatedBy            = $UpdateQAppOutput->CreatedBy;
    my $Description          = $UpdateQAppOutput->Description;
    my $InitialPrompt        = $UpdateQAppOutput->InitialPrompt;
    my $RequiredCapabilities = $UpdateQAppOutput->RequiredCapabilities;
    my $Status               = $UpdateQAppOutput->Status;
    my $Title                = $UpdateQAppOutput->Title;
    my $UpdatedAt            = $UpdateQAppOutput->UpdatedAt;
    my $UpdatedBy            = $UpdateQAppOutput->UpdatedBy;

    # Returns a L<Paws::QApps::UpdateQAppOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/UpdateQApp>

=head1 ATTRIBUTES


=head2 AppDefinition => L<Paws::QApps::AppDefinitionInput>

The new definition specifying the cards and flow for the Q App.



=head2 B<REQUIRED> AppId => Str

The unique identifier of the Q App to update.



=head2 Description => Str

The new description for the Q App.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 Title => Str

The new title for the Q App.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQApp in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

