
package Paws::Drs::DescribeRecoveryInstances;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::Drs::DescribeRecoveryInstancesRequestFilters', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRecoveryInstances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeRecoveryInstances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::DescribeRecoveryInstancesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::DescribeRecoveryInstances - Arguments for method DescribeRecoveryInstances on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRecoveryInstances on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method DescribeRecoveryInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRecoveryInstances.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $DescribeRecoveryInstancesResponse = $drs->DescribeRecoveryInstances(
      Filters => {
        RecoveryInstanceIDs => [
          'MyRecoveryInstanceID', ...    # min: 10, max: 19
        ],    # max: 200; OPTIONAL
        SourceServerIDs => [
          'MySourceServerID', ...    # min: 19, max: 19
        ],    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $DescribeRecoveryInstancesResponse->Items;
    my $NextToken = $DescribeRecoveryInstancesResponse->NextToken;

    # Returns a L<Paws::Drs::DescribeRecoveryInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/DescribeRecoveryInstances>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::Drs::DescribeRecoveryInstancesRequestFilters>

A set of filters by which to return Recovery Instances.



=head2 MaxResults => Int

Maximum number of Recovery Instances to retrieve.



=head2 NextToken => Str

The token of the next Recovery Instance to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRecoveryInstances in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

