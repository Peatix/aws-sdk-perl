
package Paws::ConnectCases::GetTemplateResponse;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTime');
  has Deleted => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deleted');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LastModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has LayoutConfiguration => (is => 'ro', isa => 'Paws::ConnectCases::LayoutConfiguration', traits => ['NameInRequest'], request_name => 'layoutConfiguration');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RequiredFields => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::RequiredField]', traits => ['NameInRequest'], request_name => 'requiredFields');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::TemplateRule]', traits => ['NameInRequest'], request_name => 'rules');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ConnectCases::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateArn', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::GetTemplateResponse

=head1 ATTRIBUTES


=head2 CreatedTime => Str

Timestamp at which the resource was created.


=head2 Deleted => Bool

Denotes whether or not the resource has been deleted.


=head2 Description => Str

A brief description of the template.


=head2 LastModifiedTime => Str

Timestamp at which the resource was created or last modified.


=head2 LayoutConfiguration => L<Paws::ConnectCases::LayoutConfiguration>

Configuration of layouts associated to the template.


=head2 B<REQUIRED> Name => Str

The name of the template.


=head2 RequiredFields => ArrayRef[L<Paws::ConnectCases::RequiredField>]

A list of fields that must contain a value for a case to be
successfully created with this template.


=head2 Rules => ArrayRef[L<Paws::ConnectCases::TemplateRule>]

A list of case rules (also known as case field conditions
(https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html))
on a template.


=head2 B<REQUIRED> Status => Str

The status of the template.

Valid values are: C<"Active">, C<"Inactive">
=head2 Tags => L<Paws::ConnectCases::Tags>

A map of of key-value pairs that represent tags on a resource. Tags are
used to organize, track, or control access for this resource.


=head2 B<REQUIRED> TemplateArn => Str

The Amazon Resource Name (ARN) of the template.


=head2 B<REQUIRED> TemplateId => Str

A unique identifier of a template.


=head2 _request_id => Str


=cut

