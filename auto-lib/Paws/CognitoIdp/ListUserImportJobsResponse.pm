
package Paws::CognitoIdp::ListUserImportJobsResponse;
  use Moose;
  has PaginationToken => (is => 'ro', isa => 'Str');
  has UserImportJobs => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::UserImportJobType]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUserImportJobsResponse

=head1 ATTRIBUTES


=head2 PaginationToken => Str

The identifier that Amazon Cognito returned with the previous request
to this operation. When you include a pagination token in your request,
Amazon Cognito returns the next set of items in the list. By use of
this token, you can paginate through the full list of items.


=head2 UserImportJobs => ArrayRef[L<Paws::CognitoIdp::UserImportJobType>]

An array of user import jobs from the requested user pool. For each,
the response includes logging destination, status, and the Amazon S3
pre-signed URL for CSV upload.


=head2 _request_id => Str


=cut

1;