
package Paws::Drs::ExportSourceNetworkCfnTemplateResponse;
  use Moose;
  has S3DestinationUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3DestinationUrl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::ExportSourceNetworkCfnTemplateResponse

=head1 ATTRIBUTES


=head2 S3DestinationUrl => Str

S3 bucket URL where the Source Network CloudFormation template was
exported to.


=head2 _request_id => Str


=cut

