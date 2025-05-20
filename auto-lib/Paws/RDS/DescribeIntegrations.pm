
package Paws::RDS::DescribeIntegrations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has IntegrationIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIntegrations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DescribeIntegrationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeIntegrationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeIntegrations - Arguments for method DescribeIntegrations on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIntegrations on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeIntegrations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIntegrations.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DescribeIntegrationsResponse = $rds->DescribeIntegrations(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      IntegrationIdentifier => 'MyIntegrationIdentifier',    # OPTIONAL
      Marker                => 'MyMarker',                   # OPTIONAL
      MaxRecords            => 1,                            # OPTIONAL
    );

    # Results:
    my $Integrations = $DescribeIntegrationsResponse->Integrations;
    my $Marker       = $DescribeIntegrationsResponse->Marker;

    # Returns a L<Paws::RDS::DescribeIntegrationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeIntegrations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more resources to return.



=head2 IntegrationIdentifier => Str

The unique identifier of the integration.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeIntegrations> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that you can
retrieve the remaining results.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIntegrations in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

