
package Paws::IVSRealTime::ListStorageConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has StorageConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::IVSRealTime::StorageConfigurationSummary]', traits => ['NameInRequest'], request_name => 'storageConfigurations', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ListStorageConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more storage configurations than C<maxResults>, use
C<nextToken> in the request to get the next set.


=head2 B<REQUIRED> StorageConfigurations => ArrayRef[L<Paws::IVSRealTime::StorageConfigurationSummary>]

List of the matching storage configurations.


=head2 _request_id => Str


=cut

