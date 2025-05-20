
package Paws::ConnectCases::CreateTemplateResponse;
  use Moose;
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateArn', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::CreateTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateArn => Str

The Amazon Resource Name (ARN) of the newly created template.


=head2 B<REQUIRED> TemplateId => Str

A unique identifier of a template.


=head2 _request_id => Str


=cut

