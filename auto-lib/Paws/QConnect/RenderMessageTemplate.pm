
package Paws::QConnect::RenderMessageTemplate;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::QConnect::MessageTemplateAttributes', traits => ['NameInRequest'], request_name => 'attributes', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has MessageTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageTemplateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RenderMessageTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/render');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::RenderMessageTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::RenderMessageTemplate - Arguments for method RenderMessageTemplate on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RenderMessageTemplate on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method RenderMessageTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RenderMessageTemplate.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $RenderMessageTemplateResponse = $wisdom->RenderMessageTemplate(
      Attributes => {
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
      },
      KnowledgeBaseId   => 'MyUuidOrArn',
      MessageTemplateId => 'MyUuidOrArnOrEitherWithQualifier',

    );

    # Results:
    my $Attachments = $RenderMessageTemplateResponse->Attachments;
    my $AttributesNotInterpolated =
      $RenderMessageTemplateResponse->AttributesNotInterpolated;
    my $Content = $RenderMessageTemplateResponse->Content;

    # Returns a L<Paws::QConnect::RenderMessageTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/RenderMessageTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => L<Paws::QConnect::MessageTemplateAttributes>

An object that specifies the values to use for variables in the message
template. This object contains different categories of key-value pairs.
Each key defines a variable or placeholder in the message template. The
corresponding value defines the value for that variable.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. Can be either the ID or the ARN.
URLs cannot contain the ARN.



=head2 B<REQUIRED> MessageTemplateId => Str

The identifier of the message template. Can be either the ID or the
ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RenderMessageTemplate in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

