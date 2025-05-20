
package Paws::QBusiness::GetGroup;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'dataSourceId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'groupName', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}/groups/{groupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::GetGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetGroup - Arguments for method GetGroup on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGroup on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method GetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGroup.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $GetGroupResponse = $qbusiness->GetGroup(
      ApplicationId => 'MyApplicationId',
      GroupName     => 'MyGroupName',
      IndexId       => 'MyIndexId',
      DataSourceId  => 'MyDataSourceId',    # OPTIONAL
    );

    # Results:
    my $Status        = $GetGroupResponse->Status;
    my $StatusHistory = $GetGroupResponse->StatusHistory;

    # Returns a L<Paws::QBusiness::GetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/GetGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application id the group is attached to.



=head2 DataSourceId => Str

The identifier of the data source the group is attached to.



=head2 B<REQUIRED> GroupName => Str

The name of the group.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index the group is attached to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGroup in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

