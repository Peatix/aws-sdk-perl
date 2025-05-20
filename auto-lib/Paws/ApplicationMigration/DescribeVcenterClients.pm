
package Paws::ApplicationMigration::DescribeVcenterClients;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVcenterClients');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeVcenterClients');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::DescribeVcenterClientsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::DescribeVcenterClients - Arguments for method DescribeVcenterClients on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVcenterClients on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method DescribeVcenterClients.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVcenterClients.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $DescribeVcenterClientsResponse = $mgn->DescribeVcenterClients(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $DescribeVcenterClientsResponse->Items;
    my $NextToken = $DescribeVcenterClientsResponse->NextToken;

# Returns a L<Paws::ApplicationMigration::DescribeVcenterClientsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/DescribeVcenterClients>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum results to be returned in DescribeVcenterClients.



=head2 NextToken => Str

Next pagination token to be provided for DescribeVcenterClients.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVcenterClients in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

