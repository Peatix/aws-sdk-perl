
package Paws::IoT::DescribeProvisioningTemplateResponse;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has DefaultVersionId => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'defaultVersionId');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');
  has PreProvisioningHook => (is => 'ro', isa => 'Paws::IoT::ProvisioningHook', traits => ['NameInRequest'], request_name => 'preProvisioningHook');
  has ProvisioningRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provisioningRoleArn');
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateArn');
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateBody');
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeProvisioningTemplateResponse

=head1 ATTRIBUTES


=head2 CreationDate => Str

The date when the provisioning template was created.


=head2 DefaultVersionId => Int

The default fleet template version ID.


=head2 Description => Str

The description of the provisioning template.


=head2 Enabled => Bool

True if the provisioning template is enabled, otherwise false.


=head2 LastModifiedDate => Str

The date when the provisioning template was last modified.


=head2 PreProvisioningHook => L<Paws::IoT::ProvisioningHook>

Gets information about a pre-provisioned hook.


=head2 ProvisioningRoleArn => Str

The ARN of the role associated with the provisioning template. This IoT
role grants permission to provision a device.


=head2 TemplateArn => Str

The ARN of the provisioning template.


=head2 TemplateBody => Str

The JSON formatted contents of the provisioning template.


=head2 TemplateName => Str

The name of the provisioning template.


=head2 Type => Str

The type you define in a provisioning template. You can create a
template with only one type. You can't change the template type after
its creation. The default value is C<FLEET_PROVISIONING>. For more
information about provisioning template, see: Provisioning template
(https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html).

Valid values are: C<"FLEET_PROVISIONING">, C<"JITP">
=head2 _request_id => Str


=cut

