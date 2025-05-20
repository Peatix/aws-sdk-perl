
package Paws::PartnerCentralSelling::CreateEngagementResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::CreateEngagementResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) that identifies the engagement.


=head2 Id => Str

Unique identifier assigned to the newly created engagement.


=head2 _request_id => Str


=cut

1;