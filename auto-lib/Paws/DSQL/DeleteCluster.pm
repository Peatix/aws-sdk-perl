
package Paws::DSQL::DeleteCluster;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'client-token');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DSQL::DeleteClusterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DSQL::DeleteCluster - Arguments for method DeleteCluster on L<Paws::DSQL>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCluster on the
L<Amazon Aurora DSQL|Paws::DSQL> service. Use the attributes of this class
as arguments to method DeleteCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCluster.

=head1 SYNOPSIS

    my $dsql = Paws->service('DSQL');
    my $DeleteClusterOutput = $dsql->DeleteCluster(
      Identifier  => 'MyClusterId',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $Arn          = $DeleteClusterOutput->Arn;
    my $CreationTime = $DeleteClusterOutput->CreationTime;
    my $Identifier   = $DeleteClusterOutput->Identifier;
    my $Status       = $DeleteClusterOutput->Status;

    # Returns a L<Paws::DSQL::DeleteClusterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dsql/DeleteCluster>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original
request completes successfully. The subsequent retries with the same
client token return the result from the original successful request and
they have no additional effect.

If you don't specify a client token, the Amazon Web Services SDK
automatically generates one.



=head2 B<REQUIRED> Identifier => Str

The ID of the cluster to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCluster in L<Paws::DSQL>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

