
package Paws::SupportApp::GetAccountAliasResult;
  use Moose;
  has AccountAlias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountAlias');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupportApp::GetAccountAliasResult

=head1 ATTRIBUTES


=head2 AccountAlias => Str

An alias or short name for an Amazon Web Services account.


=head2 _request_id => Str


=cut

