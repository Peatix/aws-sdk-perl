
package Paws::FraudDetector::GetListsMetadataResult;
  use Moose;
  has Lists => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::AllowDenyList]', traits => ['NameInRequest'], request_name => 'lists' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetListsMetadataResult

=head1 ATTRIBUTES


=head2 Lists => ArrayRef[L<Paws::FraudDetector::AllowDenyList>]

The metadata of the specified list or all lists under the account.


=head2 NextToken => Str

The next page token.


=head2 _request_id => Str


=cut

1;