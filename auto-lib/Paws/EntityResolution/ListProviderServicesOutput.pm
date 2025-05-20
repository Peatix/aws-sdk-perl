
package Paws::EntityResolution::ListProviderServicesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ProviderServiceSummaries => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::ProviderServiceSummary]', traits => ['NameInRequest'], request_name => 'providerServiceSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::ListProviderServicesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token from the previous API call.


=head2 ProviderServiceSummaries => ArrayRef[L<Paws::EntityResolution::ProviderServiceSummary>]

A list of C<ProviderServices> objects.


=head2 _request_id => Str


=cut

