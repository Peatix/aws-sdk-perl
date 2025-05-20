
package Paws::EKS::DescribeClusterVersions;
  use Moose;
  has ClusterType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clusterType');
  has ClusterVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'clusterVersions');
  has DefaultOnly => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'defaultOnly');
  has IncludeAll => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeAll');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');
  has VersionStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'versionStatus');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster-versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::DescribeClusterVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeClusterVersions - Arguments for method DescribeClusterVersions on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClusterVersions on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method DescribeClusterVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClusterVersions.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $DescribeClusterVersionsResponse = $eks->DescribeClusterVersions(
      ClusterType     => 'MyString',             # OPTIONAL
      ClusterVersions => [ 'MyString', ... ],    # OPTIONAL
      DefaultOnly     => 1,                      # OPTIONAL
      IncludeAll      => 1,                      # OPTIONAL
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyString',             # OPTIONAL
      Status          => 'unsupported',          # OPTIONAL
      VersionStatus   => 'UNSUPPORTED',          # OPTIONAL
    );

    # Results:
    my $ClusterVersions = $DescribeClusterVersionsResponse->ClusterVersions;
    my $NextToken       = $DescribeClusterVersionsResponse->NextToken;

    # Returns a L<Paws::EKS::DescribeClusterVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/DescribeClusterVersions>

=head1 ATTRIBUTES


=head2 ClusterType => Str

The type of cluster to filter versions by.



=head2 ClusterVersions => ArrayRef[Str|Undef]

List of specific cluster versions to describe.



=head2 DefaultOnly => Bool

Filter to show only default versions.



=head2 IncludeAll => Bool

Include all available versions in the response.



=head2 MaxResults => Int

Maximum number of results to return.



=head2 NextToken => Str

Pagination token for the next set of results.



=head2 Status => Str

This field is deprecated. Use C<versionStatus> instead, as that field
matches for input and output of this action.

Filter versions by their current status.

Valid values are: C<"unsupported">, C<"standard-support">, C<"extended-support">

=head2 VersionStatus => Str

Filter versions by their current status.

Valid values are: C<"UNSUPPORTED">, C<"STANDARD_SUPPORT">, C<"EXTENDED_SUPPORT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClusterVersions in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

