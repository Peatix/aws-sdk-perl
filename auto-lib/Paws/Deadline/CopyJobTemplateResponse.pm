
package Paws::Deadline::CopyJobTemplateResponse;
  use Moose;
  has TemplateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateType', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CopyJobTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateType => Str

The format of the job template, either C<JSON> or C<YAML>.

Valid values are: C<"JSON">, C<"YAML">
=head2 _request_id => Str


=cut

