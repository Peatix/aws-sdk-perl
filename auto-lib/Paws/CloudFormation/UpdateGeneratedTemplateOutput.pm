
package Paws::CloudFormation::UpdateGeneratedTemplateOutput;
  use Moose;
  has GeneratedTemplateId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::UpdateGeneratedTemplateOutput

=head1 ATTRIBUTES


=head2 GeneratedTemplateId => Str

The Amazon Resource Name (ARN) of the generated template. The format is
C<arn:${Partition}:cloudformation:${Region}:${Account}:generatedtemplate/${Id}>.
For example,
C<arn:aws:cloudformation:I<us-east-1>:I<123456789012>:generatedtemplate/I<2e8465c1-9a80-43ea-a3a3-4f2d692fe6dc>
>.


=head2 _request_id => Str


=cut

