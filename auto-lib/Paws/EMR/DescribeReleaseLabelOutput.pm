
package Paws::EMR::DescribeReleaseLabelOutput;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::EMR::SimplifiedApplication]');
  has AvailableOSReleases => (is => 'ro', isa => 'ArrayRef[Paws::EMR::OSRelease]');
  has NextToken => (is => 'ro', isa => 'Str');
  has ReleaseLabel => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeReleaseLabelOutput

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::EMR::SimplifiedApplication>]

The list of applications available for the target release label.
C<Name> is the name of the application. C<Version> is the concise
version of the application.


=head2 AvailableOSReleases => ArrayRef[L<Paws::EMR::OSRelease>]

The list of available Amazon Linux release versions for an Amazon EMR
release. Contains a Label field that is formatted as shown in I<Amazon
Linux 2 Release Notes>
(https://docs.aws.amazon.com/AL2/latest/relnotes/relnotes-al2.html).
For example, 2.0.20220218.1
(https://docs.aws.amazon.com/AL2/latest/relnotes/relnotes-20220218.html).


=head2 NextToken => Str

The pagination token. Reserved for future use. Currently set to null.


=head2 ReleaseLabel => Str

The target release label described in the response.


=head2 _request_id => Str


=cut

1;