
package Paws::RedShift::DescribeRedshiftIdcApplicationsResult;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has RedshiftIdcApplications => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::RedshiftIdcApplication]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeRedshiftIdcApplicationsResult

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the Marker parameter and retrying the command. If the
Marker field is empty, all response records have been retrieved for the
request.


=head2 RedshiftIdcApplications => ArrayRef[L<Paws::RedShift::RedshiftIdcApplication>]

The list of Amazon Redshift IAM Identity Center applications.


=head2 _request_id => Str


=cut

