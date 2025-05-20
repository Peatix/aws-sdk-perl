
package Paws::Connect::CreateTaskTemplate;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Constraints => (is => 'ro', isa => 'Paws::Connect::TaskTemplateConstraints');
  has ContactFlowId => (is => 'ro', isa => 'Str');
  has Defaults => (is => 'ro', isa => 'Paws::Connect::TaskTemplateDefaults');
  has Description => (is => 'ro', isa => 'Str');
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::Connect::TaskTemplateField]', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SelfAssignFlowId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTaskTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/task/template');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateTaskTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateTaskTemplate - Arguments for method CreateTaskTemplate on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTaskTemplate on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateTaskTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTaskTemplate.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateTaskTemplateResponse = $connect->CreateTaskTemplate(
      Fields => [
        {
          Id => {
            Name => 'MyTaskTemplateFieldName',    # min: 1, max: 100; OPTIONAL
          },
          Description =>
            'MyTaskTemplateFieldDescription',     # min: 1, max: 255; OPTIONAL
          SingleSelectOptions => [
            'MyTaskTemplateSingleSelectOption', ...    # min: 1, max: 100
          ],    # OPTIONAL
          Type => 'NAME'
          , # values: NAME, DESCRIPTION, SCHEDULED_TIME, QUICK_CONNECT, URL, NUMBER, TEXT, TEXT_AREA, DATE_TIME, BOOLEAN, SINGLE_SELECT, EMAIL, SELF_ASSIGN, EXPIRY_DURATION; OPTIONAL
        },
        ...
      ],
      InstanceId  => 'MyInstanceId',
      Name        => 'MyTaskTemplateName',
      ClientToken => 'MyClientToken',        # OPTIONAL
      Constraints => {
        InvisibleFields => [
          {
            Id => {
              Name => 'MyTaskTemplateFieldName',    # min: 1, max: 100; OPTIONAL
            },
          },
          ...
        ],    # OPTIONAL
        ReadOnlyFields => [
          {
            Id => {
              Name => 'MyTaskTemplateFieldName',    # min: 1, max: 100; OPTIONAL
            },
          },
          ...
        ],    # OPTIONAL
        RequiredFields => [
          {
            Id => {
              Name => 'MyTaskTemplateFieldName',    # min: 1, max: 100; OPTIONAL
            },
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      ContactFlowId => 'MyContactFlowId',    # OPTIONAL
      Defaults      => {
        DefaultFieldValues => [
          {
            DefaultValue => 'MyTaskTemplateFieldValue',    # max: 4096; OPTIONAL
            Id           => {
              Name => 'MyTaskTemplateFieldName',    # min: 1, max: 100; OPTIONAL
            },
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      Description      => 'MyTaskTemplateDescription',    # OPTIONAL
      SelfAssignFlowId => 'MyContactFlowId',              # OPTIONAL
      Status           => 'ACTIVE',                       # OPTIONAL
    );

    # Results:
    my $Arn = $CreateTaskTemplateResponse->Arn;
    my $Id  = $CreateTaskTemplateResponse->Id;

    # Returns a L<Paws::Connect::CreateTaskTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateTaskTemplate>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 Constraints => L<Paws::Connect::TaskTemplateConstraints>

Constraints that are applicable to the fields listed.



=head2 ContactFlowId => Str

The identifier of the flow that runs by default when a task is created
by referencing this template.



=head2 Defaults => L<Paws::Connect::TaskTemplateDefaults>

The default values for fields when a task is created by referencing
this template.



=head2 Description => Str

The description of the task template.



=head2 B<REQUIRED> Fields => ArrayRef[L<Paws::Connect::TaskTemplateField>]

Fields that are part of the template.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> Name => Str

The name of the task template.



=head2 SelfAssignFlowId => Str

The ContactFlowId for the flow that will be run if this template is
used to create a self-assigned task.



=head2 Status => Str

Marks a template as C<ACTIVE> or C<INACTIVE> for a task to refer to it.
Tasks can only be created from C<ACTIVE> templates. If a template is
marked as C<INACTIVE>, then a task that refers to this template cannot
be created.

Valid values are: C<"ACTIVE">, C<"INACTIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTaskTemplate in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

