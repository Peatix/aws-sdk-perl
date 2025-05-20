
package Paws::Connect::CreateTaskTemplateResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateTaskTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) for the task template resource.


=head2 B<REQUIRED> Id => Str

The identifier of the task template resource.


=head2 _request_id => Str


=cut

