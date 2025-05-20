
package Paws::CloudFormation::CreateGeneratedTemplateOutput;
  use Moose;
  has GeneratedTemplateId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateGeneratedTemplateOutput

=head1 ATTRIBUTES


=head2 GeneratedTemplateId => Str

The ID of the generated template.


=head2 _request_id => Str


=cut

