
package Paws::SsmSap::GetApplicationOutput;
  use Moose;
  has Application => (is => 'ro', isa => 'Paws::SsmSap::Application');
  has Tags => (is => 'ro', isa => 'Paws::SsmSap::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::GetApplicationOutput

=head1 ATTRIBUTES


=head2 Application => L<Paws::SsmSap::Application>

Returns all of the metadata of an application registered with AWS
Systems Manager for SAP.


=head2 Tags => L<Paws::SsmSap::TagMap>

The tags of a registered application.


=head2 _request_id => Str


=cut

