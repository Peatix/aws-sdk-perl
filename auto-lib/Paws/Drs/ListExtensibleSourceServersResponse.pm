
package Paws::Drs::ListExtensibleSourceServersResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::Drs::StagingSourceServer]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::ListExtensibleSourceServersResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::Drs::StagingSourceServer>]

A list of source servers on a staging Account that are extensible.


=head2 NextToken => Str

The token of the next extensible source server to retrieve.


=head2 _request_id => Str


=cut

