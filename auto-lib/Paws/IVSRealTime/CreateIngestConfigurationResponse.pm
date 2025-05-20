
package Paws::IVSRealTime::CreateIngestConfigurationResponse;
  use Moose;
  has IngestConfiguration => (is => 'ro', isa => 'Paws::IVSRealTime::IngestConfiguration', traits => ['NameInRequest'], request_name => 'ingestConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::CreateIngestConfigurationResponse

=head1 ATTRIBUTES


=head2 IngestConfiguration => L<Paws::IVSRealTime::IngestConfiguration>

The IngestConfiguration that was created.


=head2 _request_id => Str


=cut

