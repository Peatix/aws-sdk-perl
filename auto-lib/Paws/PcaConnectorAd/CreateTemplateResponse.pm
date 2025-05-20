
package Paws::PcaConnectorAd::CreateTemplateResponse;
  use Moose;
  has TemplateArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::CreateTemplateResponse

=head1 ATTRIBUTES


=head2 TemplateArn => Str

If successful, the Amazon Resource Name (ARN) of the template.


=head2 _request_id => Str


=cut

