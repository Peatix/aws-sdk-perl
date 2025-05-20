
package Paws::IVSRealTime::GetIngestConfigurationResponse;
  use Moose;
  has IngestConfiguration => (is => 'ro', isa => 'Paws::IVSRealTime::IngestConfiguration', traits => ['NameInRequest'], request_name => 'ingestConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::GetIngestConfigurationResponse

=head1 ATTRIBUTES


=head2 IngestConfiguration => L<Paws::IVSRealTime::IngestConfiguration>

The IngestConfiguration that was returned.


=head2 _request_id => Str


=cut

