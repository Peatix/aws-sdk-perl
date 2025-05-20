
package Paws::EC2::EnableReachabilityAnalyzerOrganizationSharingResult;
  use Moose;
  has ReturnValue => (is => 'ro', isa => 'Bool', request_name => 'returnValue', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableReachabilityAnalyzerOrganizationSharingResult

=head1 ATTRIBUTES


=head2 ReturnValue => Bool

Returns C<true> if the request succeeds; otherwise, returns an error.


=head2 _request_id => Str


=cut

