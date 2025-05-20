
package Paws::OpenSearchServerless::GetAccountSettingsResponse;
  use Moose;
  has AccountSettingsDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::AccountSettingsDetail', traits => ['NameInRequest'], request_name => 'accountSettingsDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::GetAccountSettingsResponse

=head1 ATTRIBUTES


=head2 AccountSettingsDetail => L<Paws::OpenSearchServerless::AccountSettingsDetail>

OpenSearch Serverless-related details for the current account.


=head2 _request_id => Str


=cut

1;