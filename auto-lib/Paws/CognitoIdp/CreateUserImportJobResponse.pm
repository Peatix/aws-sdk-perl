
package Paws::CognitoIdp::CreateUserImportJobResponse;
  use Moose;
  has UserImportJob => (is => 'ro', isa => 'Paws::CognitoIdp::UserImportJobType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserImportJobResponse

=head1 ATTRIBUTES


=head2 UserImportJob => L<Paws::CognitoIdp::UserImportJobType>

The details of the user import job. Includes logging destination,
status, and the Amazon S3 pre-signed URL for CSV upload.


=head2 _request_id => Str


=cut

1;