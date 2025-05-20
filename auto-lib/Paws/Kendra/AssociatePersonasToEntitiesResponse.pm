
package Paws::Kendra::AssociatePersonasToEntitiesResponse;
  use Moose;
  has FailedEntityList => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::FailedEntity]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::AssociatePersonasToEntitiesResponse

=head1 ATTRIBUTES


=head2 FailedEntityList => ArrayRef[L<Paws::Kendra::FailedEntity>]

Lists the users or groups in your IAM Identity Center identity source
that failed to properly configure with your Amazon Kendra experience.


=head2 _request_id => Str


=cut

1;