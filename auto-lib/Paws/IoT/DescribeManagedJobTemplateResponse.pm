
package Paws::IoT::DescribeManagedJobTemplateResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Document => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'document');
  has DocumentParameters => (is => 'ro', isa => 'ArrayRef[Paws::IoT::DocumentParameter]', traits => ['NameInRequest'], request_name => 'documentParameters');
  has Environments => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'environments');
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateArn');
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName');
  has TemplateVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateVersion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeManagedJobTemplateResponse

=head1 ATTRIBUTES


=head2 Description => Str

The unique description of a managed template.


=head2 Document => Str

The document schema for a managed job template.


=head2 DocumentParameters => ArrayRef[L<Paws::IoT::DocumentParameter>]

A map of key-value pairs that you can use as guidance to specify the
inputs for creating a job from a managed template.

C<documentParameters> can only be used when creating jobs from Amazon
Web Services managed templates. This parameter can't be used with
custom job templates or to create jobs from them.


=head2 Environments => ArrayRef[Str|Undef]

A list of environments that are supported with the managed job
template.


=head2 TemplateArn => Str

The unique Amazon Resource Name (ARN) of the managed template.


=head2 TemplateName => Str

The unique name of a managed template, such as C<AWS-Reboot>.


=head2 TemplateVersion => Str

The version for a managed template.


=head2 _request_id => Str


=cut

