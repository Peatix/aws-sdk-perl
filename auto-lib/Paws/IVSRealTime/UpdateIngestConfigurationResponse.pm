
package Paws::IVSRealTime::UpdateIngestConfigurationResponse;
  use Moose;
  has IngestConfiguration => (is => 'ro', isa => 'Paws::IVSRealTime::IngestConfiguration', traits => ['NameInRequest'], request_name => 'ingestConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::UpdateIngestConfigurationResponse

=head1 ATTRIBUTES


=head2 IngestConfiguration => L<Paws::IVSRealTime::IngestConfiguration>

The updated IngestConfiguration.


=head2 _request_id => Str


=cut

