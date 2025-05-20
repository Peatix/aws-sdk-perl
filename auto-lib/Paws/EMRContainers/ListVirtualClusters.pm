
package Paws::EMRContainers::ListVirtualClusters;
  use Moose;
  has ContainerProviderId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'containerProviderId');
  has ContainerProviderType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'containerProviderType');
  has CreatedAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdAfter');
  has CreatedBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdBefore');
  has EksAccessEntryIntegrated => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'eksAccessEntryIntegrated');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has States => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'states');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVirtualClusters');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/virtualclusters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::ListVirtualClustersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::ListVirtualClusters - Arguments for method ListVirtualClusters on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVirtualClusters on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method ListVirtualClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVirtualClusters.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $ListVirtualClustersResponse = $emr -containers->ListVirtualClusters(
      ContainerProviderId      => 'MyString1024',           # OPTIONAL
      ContainerProviderType    => 'EKS',                    # OPTIONAL
      CreatedAfter             => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedBefore            => '1970-01-01T01:00:00',    # OPTIONAL
      EksAccessEntryIntegrated => 1,                        # OPTIONAL
      MaxResults               => 1,                        # OPTIONAL
      NextToken                => 'MyNextToken',            # OPTIONAL
      States                   => [
        'RUNNING', ...    # values: RUNNING, TERMINATING, TERMINATED, ARRESTED
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListVirtualClustersResponse->NextToken;
    my $VirtualClusters = $ListVirtualClustersResponse->VirtualClusters;

    # Returns a L<Paws::EMRContainers::ListVirtualClustersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/ListVirtualClusters>

=head1 ATTRIBUTES


=head2 ContainerProviderId => Str

The container provider ID of the virtual cluster.



=head2 ContainerProviderType => Str

The container provider type of the virtual cluster. Amazon EKS is the
only supported type as of now.

Valid values are: C<"EKS">

=head2 CreatedAfter => Str

The date and time after which the virtual clusters are created.



=head2 CreatedBefore => Str

The date and time before which the virtual clusters are created.



=head2 EksAccessEntryIntegrated => Bool

Optional Boolean that specifies whether the operation should return the
virtual clusters that have the access entry integration enabled or
disabled. If not specified, the operation returns all applicable
virtual clusters.



=head2 MaxResults => Int

The maximum number of virtual clusters that can be listed.



=head2 NextToken => Str

The token for the next set of virtual clusters to return.



=head2 States => ArrayRef[Str|Undef]

The states of the requested virtual clusters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVirtualClusters in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

