
package Paws::DSQL::GetCluster;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DSQL::GetClusterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DSQL::GetCluster - Arguments for method GetCluster on L<Paws::DSQL>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCluster on the
L<Amazon Aurora DSQL|Paws::DSQL> service. Use the attributes of this class
as arguments to method GetCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCluster.

=head1 SYNOPSIS

    my $dsql = Paws->service('DSQL');
    my $GetClusterOutput = $dsql->GetCluster(
      Identifier => 'MyClusterId',

    );

    # Results:
    my $Arn          = $GetClusterOutput->Arn;
    my $CreationTime = $GetClusterOutput->CreationTime;
    my $DeletionProtectionEnabled =
      $GetClusterOutput->DeletionProtectionEnabled;
    my $Identifier            = $GetClusterOutput->Identifier;
    my $MultiRegionProperties = $GetClusterOutput->MultiRegionProperties;
    my $Status                = $GetClusterOutput->Status;
    my $Tags                  = $GetClusterOutput->Tags;

    # Returns a L<Paws::DSQL::GetClusterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dsql/GetCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The ID of the cluster to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCluster in L<Paws::DSQL>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

