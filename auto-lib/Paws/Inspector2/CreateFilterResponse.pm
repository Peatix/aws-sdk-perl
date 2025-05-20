
package Paws::Inspector2::CreateFilterResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CreateFilterResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Number (ARN) of the successfully created filter.


=head2 _request_id => Str


=cut

