
package Paws::Outposts::ListAssetInstances;
  use Moose;
  has AccountIdFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'AccountIdFilter');
  has AssetIdFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'AssetIdFilter');
  has AwsServiceFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'AwsServiceFilter');
  has InstanceTypeFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'InstanceTypeFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has OutpostIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OutpostId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssetInstances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/outposts/{OutpostId}/assetInstances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::ListAssetInstancesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListAssetInstances - Arguments for method ListAssetInstances on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssetInstances on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method ListAssetInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssetInstances.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $ListAssetInstancesOutput = $outposts->ListAssetInstances(
      OutpostIdentifier => 'MyOutpostIdentifier',
      AccountIdFilter   => [
        'MyAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      AssetIdFilter => [
        'MyAssetId', ...    # min: 1, max: 100
      ],    # OPTIONAL
      AwsServiceFilter => [
        'AWS', ...    # values: AWS, EC2, ELASTICACHE, ELB, RDS, ROUTE53
      ],    # OPTIONAL
      InstanceTypeFilter => [
        'MyOutpostInstanceType', ...    # min: 3, max: 30
      ],    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $AssetInstances = $ListAssetInstancesOutput->AssetInstances;
    my $NextToken      = $ListAssetInstancesOutput->NextToken;

    # Returns a L<Paws::Outposts::ListAssetInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/ListAssetInstances>

=head1 ATTRIBUTES


=head2 AccountIdFilter => ArrayRef[Str|Undef]

Filters the results by account ID.



=head2 AssetIdFilter => ArrayRef[Str|Undef]

Filters the results by asset ID.



=head2 AwsServiceFilter => ArrayRef[Str|Undef]

Filters the results by Amazon Web Services service.



=head2 InstanceTypeFilter => ArrayRef[Str|Undef]

Filters the results by instance ID.



=head2 MaxResults => Int





=head2 NextToken => Str





=head2 B<REQUIRED> OutpostIdentifier => Str

The ID of the Outpost.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssetInstances in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

