
package Paws::Kendra::PutPrincipalMapping;
  use Moose;
  has DataSourceId => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has GroupMembers => (is => 'ro', isa => 'Paws::Kendra::GroupMembers', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has OrderingId => (is => 'ro', isa => 'Int');
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPrincipalMapping');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::PutPrincipalMapping - Arguments for method PutPrincipalMapping on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPrincipalMapping on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method PutPrincipalMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPrincipalMapping.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    $kendra->PutPrincipalMapping(
      GroupId      => 'MyGroupId',
      GroupMembers => {
        MemberGroups => [
          {
            GroupId      => 'MyGroupId',         # min: 1, max: 1024
            DataSourceId => 'MyDataSourceId',    # min: 1, max: 100; OPTIONAL
          },
          ...
        ],    # min: 1, max: 1000; OPTIONAL
        MemberUsers => [
          {
            UserId => 'MyUserId',    # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 1000; OPTIONAL
        S3PathforGroupMembers => {
          Bucket => 'MyS3BucketName',    # min: 3, max: 63
          Key    => 'MyS3ObjectKey',     # min: 1, max: 1024

        },    # OPTIONAL
      },
      IndexId      => 'MyIndexId',
      DataSourceId => 'MyDataSourceId',    # OPTIONAL
      OrderingId   => 1,                   # OPTIONAL
      RoleArn      => 'MyRoleArn',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/PutPrincipalMapping>

=head1 ATTRIBUTES


=head2 DataSourceId => Str

The identifier of the data source you want to map users to their
groups.

This is useful if a group is tied to multiple data sources, but you
only want the group to access documents of a certain data source. For
example, the groups "Research", "Engineering", and "Sales and
Marketing" are all tied to the company's documents stored in the data
sources Confluence and Salesforce. However, "Sales and Marketing" team
only needs access to customer-related documents stored in Salesforce.



=head2 B<REQUIRED> GroupId => Str

The identifier of the group you want to map its users to.



=head2 B<REQUIRED> GroupMembers => L<Paws::Kendra::GroupMembers>

The list that contains your users that belong the same group. This can
include sub groups that belong to a group.

For example, the group "Company A" includes the user "CEO" and the sub
groups "Research", "Engineering", and "Sales and Marketing".

If you have more than 1000 users and/or sub groups for a single group,
you need to provide the path to the S3 file that lists your users and
sub groups for a group. Your sub groups can contain more than 1000
users, but the list of sub groups that belong to a group (and/or users)
must be no more than 1000.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index you want to map users to their groups.



=head2 OrderingId => Int

The timestamp identifier you specify to ensure Amazon Kendra doesn't
override the latest C<PUT> action with previous actions. The highest
number ID, which is the ordering ID, is the latest action you want to
process and apply on top of other actions with lower number IDs. This
prevents previous actions with lower number IDs from possibly
overriding the latest action.

The ordering ID can be the Unix time of the last update you made to a
group members list. You would then provide this list when calling
C<PutPrincipalMapping>. This ensures your C<PUT> action for that
updated group with the latest members list doesn't get overwritten by
earlier C<PUT> actions for the same group which are yet to be
processed.

The default ordering ID is the current Unix time in milliseconds that
the action was received by Amazon Kendra.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that has access to the S3
file that contains your list of users that belong to a group.

For more information, see IAM roles for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html#iam-roles-ds).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPrincipalMapping in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

