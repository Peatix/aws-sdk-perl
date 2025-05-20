
package Paws::TaxSettings::GetTaxInheritanceResponse;
  use Moose;
  has HeritageStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'heritageStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::GetTaxInheritanceResponse

=head1 ATTRIBUTES


=head2 HeritageStatus => Str

The tax inheritance status.

Valid values are: C<"OptIn">, C<"OptOut">
=head2 _request_id => Str


=cut

