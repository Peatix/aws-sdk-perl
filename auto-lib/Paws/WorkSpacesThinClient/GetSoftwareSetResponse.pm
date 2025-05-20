
package Paws::WorkSpacesThinClient::GetSoftwareSetResponse;
  use Moose;
  has SoftwareSet => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::SoftwareSet', traits => ['NameInRequest'], request_name => 'softwareSet');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::GetSoftwareSetResponse

=head1 ATTRIBUTES


=head2 SoftwareSet => L<Paws::WorkSpacesThinClient::SoftwareSet>

Describes a software set.


=head2 _request_id => Str


=cut

