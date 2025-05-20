
package Paws::ResourceGroups::StartTagSyncTask;
  use Moose;
  has Group => (is => 'ro', isa => 'Str', required => 1);
  has ResourceQuery => (is => 'ro', isa => 'Paws::ResourceGroups::ResourceQuery');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has TagKey => (is => 'ro', isa => 'Str');
  has TagValue => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTagSyncTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/start-tag-sync-task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::StartTagSyncTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::StartTagSyncTask - Arguments for method StartTagSyncTask on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTagSyncTask on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method StartTagSyncTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTagSyncTask.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $StartTagSyncTaskOutput = $resource -groups->StartTagSyncTask(
      Group         => 'MyGroupStringV2',
      RoleArn       => 'MyRoleArn',
      ResourceQuery => {
        Query => 'MyQuery',          # max: 4096
        Type  => 'TAG_FILTERS_1_0'
        ,    # values: TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0min: 1, max: 128

      },    # OPTIONAL
      TagKey   => 'MyTagKey',      # OPTIONAL
      TagValue => 'MyTagValue',    # OPTIONAL
    );

    # Results:
    my $GroupArn      = $StartTagSyncTaskOutput->GroupArn;
    my $GroupName     = $StartTagSyncTaskOutput->GroupName;
    my $ResourceQuery = $StartTagSyncTaskOutput->ResourceQuery;
    my $RoleArn       = $StartTagSyncTaskOutput->RoleArn;
    my $TagKey        = $StartTagSyncTaskOutput->TagKey;
    my $TagValue      = $StartTagSyncTaskOutput->TagValue;
    my $TaskArn       = $StartTagSyncTaskOutput->TaskArn;

    # Returns a L<Paws::ResourceGroups::StartTagSyncTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/StartTagSyncTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Group => Str

The Amazon resource name (ARN) or name of the application group for
which you want to create a tag-sync task.



=head2 ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>

The query you can use to create the tag-sync task. With this method,
all resources matching the query are added to the specified application
group. A C<ResourceQuery> specifies both a query C<Type> and a C<Query>
string as JSON string objects. For more information on defining a
resource query for a tag-sync task, see the tag-based query type in
Types of resource group queries
(https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#getting_started-query_types)
in I<Resource Groups User Guide>.

When using the C<ResourceQuery> parameter, you cannot use the C<TagKey>
and C<TagValue> parameters.

When you combine all of the elements together into a single string, any
double quotes that are embedded inside another double quote pair must
be escaped by preceding the embedded double quote with a backslash
character (\). For example, a complete C<ResourceQuery> parameter must
be formatted like the following CLI parameter example:

C<--resource-query
'{"Type":"TAG_FILTERS_1_0","Query":"{\"ResourceTypeFilters\":[\"AWS::AllSupported\"],\"TagFilters\":[{\"Key\":\"Stage\",\"Values\":[\"Test\"]}]}"}'>

In the preceding example, all of the double quote characters in the
value part of the C<Query> element must be escaped because the value
itself is surrounded by double quotes. For more information, see
Quoting strings
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html)
in the I<Command Line Interface User Guide>.

For the complete list of resource types that you can use in the array
value for C<ResourceTypeFilters>, see Resources you can use with
Resource Groups and Tag Editor
(https://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html)
in the I<Resource Groups User Guide>. For example:

C<"ResourceTypeFilters":["AWS::S3::Bucket", "AWS::EC2::Instance"]>



=head2 B<REQUIRED> RoleArn => Str

The Amazon resource name (ARN) of the role assumed by the service to
tag and untag resources on your behalf.



=head2 TagKey => Str

The tag key. Resources tagged with this tag key-value pair will be
added to the application. If a resource with this tag is later
untagged, the tag-sync task removes the resource from the application.

When using the C<TagKey> parameter, you must also specify the
C<TagValue> parameter. If you specify a tag key-value pair, you can't
use the C<ResourceQuery> parameter.



=head2 TagValue => Str

The tag value. Resources tagged with this tag key-value pair will be
added to the application. If a resource with this tag is later
untagged, the tag-sync task removes the resource from the application.

When using the C<TagValue> parameter, you must also specify the
C<TagKey> parameter. If you specify a tag key-value pair, you can't use
the C<ResourceQuery> parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTagSyncTask in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

