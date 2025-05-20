
package Paws::DevOpsGuru::DescribeResourceCollectionHealthResponse;
  use Moose;
  has CloudFormation => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::CloudFormationHealth]');
  has NextToken => (is => 'ro', isa => 'Str');
  has Service => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::ServiceHealth]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::TagHealth]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeResourceCollectionHealthResponse

=head1 ATTRIBUTES


=head2 CloudFormation => ArrayRef[L<Paws::DevOpsGuru::CloudFormationHealth>]

The returned C<CloudFormationHealthOverview> object that contains an
C<InsightHealthOverview> object with the requested system health
information.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 Service => ArrayRef[L<Paws::DevOpsGuru::ServiceHealth>]

An array of C<ServiceHealth> objects that describes the health of the
Amazon Web Services services associated with the resources in the
collection.


=head2 Tags => ArrayRef[L<Paws::DevOpsGuru::TagHealth>]

The Amazon Web Services tags that are used by resources in the resource
collection.

Tags help you identify and organize your Amazon Web Services resources.
Many Amazon Web Services services support tagging, so you can assign
the same tag to resources from different services to indicate that the
resources are related. For example, you can assign the same tag to an
Amazon DynamoDB table resource that you assign to an Lambda function.
For more information about using tags, see the Tagging best practices
(https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html)
whitepaper.

Each Amazon Web Services tag has two parts.

=over

=item *

A tag I<key> (for example, C<CostCenter>, C<Environment>, C<Project>,
or C<Secret>). Tag I<keys> are case-sensitive.

=item *

An optional field known as a tag I<value> (for example,
C<111122223333>, C<Production>, or a team name). Omitting the tag
I<value> is the same as using an empty string. Like tag I<keys>, tag
I<values> are case-sensitive.

=back

Together these are known as I<key>-I<value> pairs.

The string used for a I<key> in a tag that you use to define your
resource coverage must begin with the prefix C<Devops-guru->. The tag
I<key> might be C<DevOps-Guru-deployment-application> or
C<devops-guru-rds-application>. When you create a I<key>, the case of
characters in the I<key> can be whatever you choose. After you create a
I<key>, it is case-sensitive. For example, DevOps Guru works with a
I<key> named C<devops-guru-rds> and a I<key> named C<DevOps-Guru-RDS>,
and these act as two different I<keys>. Possible I<key>/I<value> pairs
in your application might be C<Devops-Guru-production-application/RDS>
or C<Devops-Guru-production-application/containers>.


=head2 _request_id => Str


=cut

