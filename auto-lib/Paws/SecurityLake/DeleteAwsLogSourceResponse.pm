
package Paws::SecurityLake::DeleteAwsLogSourceResponse;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failed');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::DeleteAwsLogSourceResponse

=head1 ATTRIBUTES


=head2 Failed => ArrayRef[Str|Undef]

Deletion of the Amazon Web Services sources failed as the account is
not a part of the organization.


=head2 _request_id => Str


=cut

