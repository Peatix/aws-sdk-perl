
package Paws::QBusiness::PutGroup;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceId');
  has GroupMembers => (is => 'ro', isa => 'Paws::QBusiness::GroupMembers', traits => ['NameInRequest'], request_name => 'groupMembers', required => 1);
  has GroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupName', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}/groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::PutGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::PutGroup - Arguments for method PutGroup on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutGroup on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method PutGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutGroup.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $PutGroupResponse = $qbusiness->PutGroup(
      ApplicationId => 'MyApplicationId',
      GroupMembers  => {
        MemberGroups => [
          {
            GroupName => 'MyGroupName',    # min: 1, max: 1024
            Type      => 'INDEX',          # values: INDEX, DATASOURCE; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        MemberUsers => [
          {
            UserId => 'MyDataSourceUserId',    # min: 1, max: 1024
            Type   => 'INDEX',    # values: INDEX, DATASOURCE; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        S3PathForGroupMembers => {
          Bucket => 'MyS3BucketName',    # min: 1, max: 63
          Key    => 'MyS3ObjectKey',     # min: 1, max: 1024

        },    # OPTIONAL
      },
      GroupName    => 'MyGroupName',
      IndexId      => 'MyIndexId',
      Type         => 'INDEX',
      DataSourceId => 'MyDataSourceId',    # OPTIONAL
      RoleArn      => 'MyRoleArn',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/PutGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application in which the user and group mapping
belongs.



=head2 DataSourceId => Str

The identifier of the data source for which you want to map users to
their groups. This is useful if a group is tied to multiple data
sources, but you only want the group to access documents of a certain
data source. For example, the groups "Research", "Engineering", and
"Sales and Marketing" are all tied to the company's documents stored in
the data sources Confluence and Salesforce. However, "Sales and
Marketing" team only needs access to customer-related documents stored
in Salesforce.



=head2 B<REQUIRED> GroupMembers => L<Paws::QBusiness::GroupMembers>





=head2 B<REQUIRED> GroupName => Str

The list that contains your users or sub groups that belong the same
group. For example, the group "Company" includes the user "CEO" and the
sub groups "Research", "Engineering", and "Sales and Marketing".



=head2 B<REQUIRED> IndexId => Str

The identifier of the index in which you want to map users to their
groups.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that has access to the S3
file that contains your list of users that belong to a group.



=head2 B<REQUIRED> Type => Str

The type of the group.

Valid values are: C<"INDEX">, C<"DATASOURCE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutGroup in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

