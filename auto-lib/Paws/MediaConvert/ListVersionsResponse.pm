
package Paws::MediaConvert::ListVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Versions => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::JobEngineVersion]', traits => ['NameInRequest'], request_name => 'versions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Optional. Use this string, provided with the response to a previous
request, to request the next batch of Job engine versions.


=head2 Versions => ArrayRef[L<Paws::MediaConvert::JobEngineVersion>]

Retrieve a JSON array of all available Job engine versions and the date
they expire.


=head2 _request_id => Str


=cut

