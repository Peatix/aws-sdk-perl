
package Paws::QBusiness::DeleteGroup;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'dataSourceId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'groupName', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}/groups/{groupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::DeleteGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::DeleteGroup - Arguments for method DeleteGroup on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGroup on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method DeleteGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGroup.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $DeleteGroupResponse = $qbusiness->DeleteGroup(
      ApplicationId => 'MyApplicationId',
      GroupName     => 'MyGroupName',
      IndexId       => 'MyIndexId',
      DataSourceId  => 'MyDataSourceId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/DeleteGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application in which the group mapping belongs.



=head2 DataSourceId => Str

The identifier of the data source linked to the group

A group can be tied to multiple data sources. You can delete a group
from accessing documents in a certain data source. For example, the
groups "Research", "Engineering", and "Sales and Marketing" are all
tied to the company's documents stored in the data sources Confluence
and Salesforce. You want to delete "Research" and "Engineering" groups
from Salesforce, so that these groups cannot access customer-related
documents stored in Salesforce. Only "Sales and Marketing" should
access documents in the Salesforce data source.



=head2 B<REQUIRED> GroupName => Str

The name of the group you want to delete.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index you want to delete the group from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGroup in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

