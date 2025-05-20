
package Paws::Repostspace::BatchRemoveRoleOutput;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Repostspace::BatchError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);
  has RemovedAccessorIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'removedAccessorIds', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace::BatchRemoveRoleOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::Repostspace::BatchError>]

An array of errors that occurred when roles were removed.


=head2 B<REQUIRED> RemovedAccessorIds => ArrayRef[Str|Undef]

An array of successfully updated accessor identifiers.


=head2 _request_id => Str


=cut

