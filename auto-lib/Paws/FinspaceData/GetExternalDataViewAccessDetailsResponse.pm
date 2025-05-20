
package Paws::FinspaceData::GetExternalDataViewAccessDetailsResponse;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::FinspaceData::AwsCredentials', traits => ['NameInRequest'], request_name => 'credentials');
  has S3Location => (is => 'ro', isa => 'Paws::FinspaceData::S3Location', traits => ['NameInRequest'], request_name => 's3Location');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetExternalDataViewAccessDetailsResponse

=head1 ATTRIBUTES


=head2 Credentials => L<Paws::FinspaceData::AwsCredentials>

The credentials required to access the external Dataview from the S3
location.


=head2 S3Location => L<Paws::FinspaceData::S3Location>

The location where the external Dataview is stored.


=head2 _request_id => Str


=cut

