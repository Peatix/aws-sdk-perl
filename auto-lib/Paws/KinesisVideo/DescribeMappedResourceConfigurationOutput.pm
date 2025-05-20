
package Paws::KinesisVideo::DescribeMappedResourceConfigurationOutput;
  use Moose;
  has MappedResourceConfigurationList => (is => 'ro', isa => 'ArrayRef[Paws::KinesisVideo::MappedResourceConfigurationListItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DescribeMappedResourceConfigurationOutput

=head1 ATTRIBUTES


=head2 MappedResourceConfigurationList => ArrayRef[L<Paws::KinesisVideo::MappedResourceConfigurationListItem>]

A structure that encapsulates, or contains, the media storage
configuration properties.


=head2 NextToken => Str

The token that was used in the C<NextToken>request to fetch the next
set of results.


=head2 _request_id => Str


=cut

