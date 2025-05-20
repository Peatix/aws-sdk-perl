
package Paws::ConnectCases::CreateTemplate;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has LayoutConfiguration => (is => 'ro', isa => 'Paws::ConnectCases::LayoutConfiguration', traits => ['NameInRequest'], request_name => 'layoutConfiguration');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RequiredFields => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::RequiredField]', traits => ['NameInRequest'], request_name => 'requiredFields');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::TemplateRule]', traits => ['NameInRequest'], request_name => 'rules');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/templates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::CreateTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::CreateTemplate - Arguments for method CreateTemplate on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTemplate on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method CreateTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTemplate.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $CreateTemplateResponse = $cases->CreateTemplate(
      DomainId            => 'MyDomainId',
      Name                => 'MyTemplateName',
      Description         => 'MyTemplateDescription',    # OPTIONAL
      LayoutConfiguration => {
        DefaultLayout => 'MyLayoutId',    # min: 1, max: 500; OPTIONAL
      },    # OPTIONAL
      RequiredFields => [
        {
          FieldId => 'MyFieldId',    # min: 1, max: 500

        },
        ...
      ],    # OPTIONAL
      Rules => [
        {
          CaseRuleId => 'MyCaseRuleId',    # min: 1, max: 500
          FieldId    => 'MyFieldId',       # min: 1, max: 500

        },
        ...
      ],    # OPTIONAL
      Status => 'Active',    # OPTIONAL
    );

    # Results:
    my $TemplateArn = $CreateTemplateResponse->TemplateArn;
    my $TemplateId  = $CreateTemplateResponse->TemplateId;

    # Returns a L<Paws::ConnectCases::CreateTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/CreateTemplate>

=head1 ATTRIBUTES


=head2 Description => Str

A brief description of the template.



=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 LayoutConfiguration => L<Paws::ConnectCases::LayoutConfiguration>

Configuration of layouts associated to the template.



=head2 B<REQUIRED> Name => Str

A name for the template. It must be unique per domain.



=head2 RequiredFields => ArrayRef[L<Paws::ConnectCases::RequiredField>]

A list of fields that must contain a value for a case to be
successfully created with this template.



=head2 Rules => ArrayRef[L<Paws::ConnectCases::TemplateRule>]

A list of case rules (also known as case field conditions
(https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html))
on a template.



=head2 Status => Str

The status of the template.

Valid values are: C<"Active">, C<"Inactive">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTemplate in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

