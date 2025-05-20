
package Paws::QApps::ExportQAppSessionDataOutput;
  use Moose;
  has CsvFileLink => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'csvFileLink', required => 1);
  has ExpiresAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiresAt', required => 1);
  has SessionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::ExportQAppSessionDataOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CsvFileLink => Str

The link where the exported Q App session data can be downloaded from.


=head2 B<REQUIRED> ExpiresAt => Str

The date and time when the link for the exported Q App session data
expires.


=head2 B<REQUIRED> SessionArn => Str

The Amazon Resource Name (ARN) of the Q App data collection session.


=head2 _request_id => Str


=cut

