
package Paws::Macie2::UpdateRevealConfigurationResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Macie2::RevealConfiguration', traits => ['NameInRequest'], request_name => 'configuration');
  has RetrievalConfiguration => (is => 'ro', isa => 'Paws::Macie2::RetrievalConfiguration', traits => ['NameInRequest'], request_name => 'retrievalConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UpdateRevealConfigurationResponse

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::Macie2::RevealConfiguration>

The KMS key to use to encrypt the sensitive data, and the status of the
configuration for the Amazon Macie account.


=head2 RetrievalConfiguration => L<Paws::Macie2::RetrievalConfiguration>

The access method and settings to use when retrieving the sensitive
data.


=head2 _request_id => Str


=cut

