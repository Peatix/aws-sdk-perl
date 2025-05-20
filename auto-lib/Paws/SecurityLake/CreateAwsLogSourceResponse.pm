
package Paws::SecurityLake::CreateAwsLogSourceResponse;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failed');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::CreateAwsLogSourceResponse

=head1 ATTRIBUTES


=head2 Failed => ArrayRef[Str|Undef]

Lists all accounts in which enabling a natively supported Amazon Web
Services service as a Security Lake source failed. The failure occurred
as these accounts are not part of an organization.


=head2 _request_id => Str


=cut

