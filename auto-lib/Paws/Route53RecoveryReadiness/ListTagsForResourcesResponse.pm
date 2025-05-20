
package Paws::Route53RecoveryReadiness::ListTagsForResourcesResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Route53RecoveryReadiness::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::ListTagsForResourcesResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Route53RecoveryReadiness::Tags>




=head2 _request_id => Str


=cut

