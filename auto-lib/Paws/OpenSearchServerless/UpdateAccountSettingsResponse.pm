
package Paws::OpenSearchServerless::UpdateAccountSettingsResponse;
  use Moose;
  has AccountSettingsDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::AccountSettingsDetail', traits => ['NameInRequest'], request_name => 'accountSettingsDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::UpdateAccountSettingsResponse

=head1 ATTRIBUTES


=head2 AccountSettingsDetail => L<Paws::OpenSearchServerless::AccountSettingsDetail>

OpenSearch Serverless-related settings for the current Amazon Web
Services account.


=head2 _request_id => Str


=cut

1;