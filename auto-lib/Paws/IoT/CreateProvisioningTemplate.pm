
package Paws::IoT::CreateProvisioningTemplate;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled');
  has PreProvisioningHook => (is => 'ro', isa => 'Paws::IoT::ProvisioningHook', traits => ['NameInRequest'], request_name => 'preProvisioningHook');
  has ProvisioningRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provisioningRoleArn', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateBody', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProvisioningTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioning-templates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateProvisioningTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateProvisioningTemplate - Arguments for method CreateProvisioningTemplate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProvisioningTemplate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateProvisioningTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProvisioningTemplate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateProvisioningTemplateResponse = $iot->CreateProvisioningTemplate(
      ProvisioningRoleArn => 'MyRoleArn',
      TemplateBody        => 'MyTemplateBody',
      TemplateName        => 'MyTemplateName',
      Description         => 'MyTemplateDescription',    # OPTIONAL
      Enabled             => 1,                          # OPTIONAL
      PreProvisioningHook => {
        TargetArn      => 'MyTargetArn',         # max: 2048
        PayloadVersion => 'MyPayloadVersion',    # min: 10, max: 32; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Type => 'FLEET_PROVISIONING',    # OPTIONAL
    );

    # Results:
    my $DefaultVersionId =
      $CreateProvisioningTemplateResponse->DefaultVersionId;
    my $TemplateArn  = $CreateProvisioningTemplateResponse->TemplateArn;
    my $TemplateName = $CreateProvisioningTemplateResponse->TemplateName;

    # Returns a L<Paws::IoT::CreateProvisioningTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateProvisioningTemplate>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the provisioning template.



=head2 Enabled => Bool

True to enable the provisioning template, otherwise false.



=head2 PreProvisioningHook => L<Paws::IoT::ProvisioningHook>

Creates a pre-provisioning hook template. Only supports template of
type C<FLEET_PROVISIONING>. For more information about provisioning
template types, see type
(https://docs.aws.amazon.com/iot/latest/apireference/API_CreateProvisioningTemplate.html#iot-CreateProvisioningTemplate-request-type).



=head2 B<REQUIRED> ProvisioningRoleArn => Str

The role ARN for the role associated with the provisioning template.
This IoT role grants permission to provision a device.



=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata which can be used to manage the provisioning template.

For URI Request parameters use format: ...key1=value1&key2=value2...

For the CLI command-line parameter use format: &&tags
"key1=value1&key2=value2..."

For the cli-input-json file use format: "tags":
"key1=value1&key2=value2..."



=head2 B<REQUIRED> TemplateBody => Str

The JSON formatted contents of the provisioning template.



=head2 B<REQUIRED> TemplateName => Str

The name of the provisioning template.



=head2 Type => Str

The type you define in a provisioning template. You can create a
template with only one type. You can't change the template type after
its creation. The default value is C<FLEET_PROVISIONING>. For more
information about provisioning template, see: Provisioning template
(https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html).

Valid values are: C<"FLEET_PROVISIONING">, C<"JITP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProvisioningTemplate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

