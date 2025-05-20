
package Paws::CustomerProfiles::GetIdentityResolutionJobResponse;
  use Moose;
  has AutoMerging => (is => 'ro', isa => 'Paws::CustomerProfiles::AutoMerging');
  has DomainName => (is => 'ro', isa => 'Str');
  has ExportingLocation => (is => 'ro', isa => 'Paws::CustomerProfiles::ExportingLocation');
  has JobEndTime => (is => 'ro', isa => 'Str');
  has JobExpirationTime => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has JobStartTime => (is => 'ro', isa => 'Str');
  has JobStats => (is => 'ro', isa => 'Paws::CustomerProfiles::JobStats');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetIdentityResolutionJobResponse

=head1 ATTRIBUTES


=head2 AutoMerging => L<Paws::CustomerProfiles::AutoMerging>

Configuration settings for how to perform the auto-merging of profiles.


=head2 DomainName => Str

The unique name of the domain.


=head2 ExportingLocation => L<Paws::CustomerProfiles::ExportingLocation>

The S3 location where the Identity Resolution Job writes result files.


=head2 JobEndTime => Str

The timestamp of when the Identity Resolution Job was completed.


=head2 JobExpirationTime => Str

The timestamp of when the Identity Resolution Job will expire.


=head2 JobId => Str

The unique identifier of the Identity Resolution Job.


=head2 JobStartTime => Str

The timestamp of when the Identity Resolution Job was started or will
be started.


=head2 JobStats => L<Paws::CustomerProfiles::JobStats>

Statistics about the Identity Resolution Job.


=head2 LastUpdatedAt => Str

The timestamp of when the Identity Resolution Job was most recently
edited.


=head2 Message => Str

The error messages that are generated when the Identity Resolution Job
runs.


=head2 Status => Str

The status of the Identity Resolution Job.

=over

=item *

C<PENDING>: The Identity Resolution Job is scheduled but has not
started yet. If you turn off the Identity Resolution feature in your
domain, jobs in the C<PENDING> state are deleted.

=item *

C<PREPROCESSING>: The Identity Resolution Job is loading your data.

=item *

C<FIND_MATCHING>: The Identity Resolution Job is using the machine
learning model to identify profiles that belong to the same matching
group.

=item *

C<MERGING>: The Identity Resolution Job is merging duplicate profiles.

=item *

C<COMPLETED>: The Identity Resolution Job completed successfully.

=item *

C<PARTIAL_SUCCESS>: There's a system error and not all of the data is
merged. The Identity Resolution Job writes a message indicating the
source of the problem.

=item *

C<FAILED>: The Identity Resolution Job did not merge any data. It
writes a message indicating the source of the problem.

=back


Valid values are: C<"PENDING">, C<"PREPROCESSING">, C<"FIND_MATCHING">, C<"MERGING">, C<"COMPLETED">, C<"PARTIAL_SUCCESS">, C<"FAILED">
=head2 _request_id => Str


=cut

