
package Paws::SSOAdmin::CreateApplicationResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

Specifies the ARN of the application.


=head2 _request_id => Str


=cut

1;