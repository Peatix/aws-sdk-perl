
package Paws::QConnect::UpdateMessageTemplate;
  use Moose;
  has Content => (is => 'ro', isa => 'Paws::QConnect::MessageTemplateContentProvider', traits => ['NameInRequest'], request_name => 'content');
  has DefaultAttributes => (is => 'ro', isa => 'Paws::QConnect::MessageTemplateAttributes', traits => ['NameInRequest'], request_name => 'defaultAttributes');
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has Language => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'language');
  has MessageTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageTemplateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMessageTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::UpdateMessageTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateMessageTemplate - Arguments for method UpdateMessageTemplate on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMessageTemplate on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method UpdateMessageTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMessageTemplate.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $UpdateMessageTemplateResponse = $wisdom->UpdateMessageTemplate(
      KnowledgeBaseId   => 'MyUuidOrArn',
      MessageTemplateId => 'MyUuidOrArnOrEitherWithQualifier',
      Content           => {
        Email => {
          Body => {
            Html => {
              Content => 'MyNonEmptyUnlimitedString',    # min: 1; OPTIONAL
            },    # OPTIONAL
            PlainText => {
              Content => 'MyNonEmptyUnlimitedString',    # min: 1; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Headers => [
            {
              Name  => 'MyEmailHeaderKey',      # min: 1, max: 126; OPTIONAL
              Value => 'MyEmailHeaderValue',    # min: 1, max: 870; OPTIONAL
            },
            ...
          ],    # max: 15; OPTIONAL
          Subject => 'MyNonEmptyUnlimitedString',    # min: 1; OPTIONAL
        },    # OPTIONAL
        Sms => {
          Body => {
            PlainText => {
              Content => 'MyNonEmptyUnlimitedString',    # min: 1; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      DefaultAttributes => {
        AgentAttributes => {
          FirstName =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          LastName =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
        },    # OPTIONAL
        CustomAttributes => {
          'MyMessageTemplateAttributeKey' => 'MyMessageTemplateAttributeValue'
          ,    # key: min: 1, max: 32767, value: min: 1, max: 32767; OPTIONAL
        },    # OPTIONAL
        CustomerProfileAttributes => {
          AccountNumber =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          AdditionalInformation =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          Address1 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          Address2 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          Address3 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          Address4 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BillingAddress1 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BillingAddress2 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BillingAddress3 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BillingAddress4 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BillingCity =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BillingCountry =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BillingCounty =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BillingPostalCode =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BillingProvince =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BillingState =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BirthDate =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BusinessEmailAddress =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BusinessName =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          BusinessPhoneNumber =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          City =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          Country =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          County =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          Custom => {
            'MyMessageTemplateAttributeKey' => 'MyMessageTemplateAttributeValue'
            ,    # key: min: 1, max: 32767, value: min: 1, max: 32767; OPTIONAL
          },    # OPTIONAL
          EmailAddress =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          FirstName =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          Gender =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          HomePhoneNumber =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          LastName =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          MailingAddress1 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          MailingAddress2 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          MailingAddress3 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          MailingAddress4 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          MailingCity =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          MailingCountry =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          MailingCounty =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          MailingPostalCode =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          MailingProvince =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          MailingState =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          MiddleName =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          MobilePhoneNumber =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          PartyType =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          PhoneNumber =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          PostalCode =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          ProfileARN =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          ProfileId =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          Province =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          ShippingAddress1 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          ShippingAddress2 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          ShippingAddress3 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          ShippingAddress4 =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          ShippingCity =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          ShippingCountry =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          ShippingCounty =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          ShippingPostalCode =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          ShippingProvince =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          ShippingState =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          State =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
        },    # OPTIONAL
        SystemAttributes => {
          CustomerEndpoint => {
            Address =>
              'MyMessageTemplateAttributeValue',  # min: 1, max: 32767; OPTIONAL
          },    # OPTIONAL
          Name =>
            'MyMessageTemplateAttributeValue',    # min: 1, max: 32767; OPTIONAL
          SystemEndpoint => {
            Address =>
              'MyMessageTemplateAttributeValue',  # min: 1, max: 32767; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Language => 'MyLanguageCode',    # OPTIONAL
    );

    # Results:
    my $MessageTemplate = $UpdateMessageTemplateResponse->MessageTemplate;

    # Returns a L<Paws::QConnect::UpdateMessageTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/UpdateMessageTemplate>

=head1 ATTRIBUTES


=head2 Content => L<Paws::QConnect::MessageTemplateContentProvider>

The content of the message template.



=head2 DefaultAttributes => L<Paws::QConnect::MessageTemplateAttributes>

An object that specifies the default values to use for variables in the
message template. This object contains different categories of
key-value pairs. Each key defines a variable or placeholder in the
message template. The corresponding value defines the default value for
that variable.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. Can be either the ID or the ARN.
URLs cannot contain the ARN.



=head2 Language => Str

The language code value for the language in which the quick response is
written. The supported language codes include C<de_DE>, C<en_US>,
C<es_ES>, C<fr_FR>, C<id_ID>, C<it_IT>, C<ja_JP>, C<ko_KR>, C<pt_BR>,
C<zh_CN>, C<zh_TW>



=head2 B<REQUIRED> MessageTemplateId => Str

The identifier of the message template. Can be either the ID or the
ARN. It cannot contain any qualifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMessageTemplate in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

