
package Paws::Drs::DescribeReplicationConfigurationTemplates;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReplicationConfigurationTemplateIDs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'replicationConfigurationTemplateIDs');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReplicationConfigurationTemplates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeReplicationConfigurationTemplates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::DescribeReplicationConfigurationTemplatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::DescribeReplicationConfigurationTemplates - Arguments for method DescribeReplicationConfigurationTemplates on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReplicationConfigurationTemplates on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method DescribeReplicationConfigurationTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReplicationConfigurationTemplates.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $DescribeReplicationConfigurationTemplatesResponse =
      $drs->DescribeReplicationConfigurationTemplates(
      MaxResults                          => 1,                      # OPTIONAL
      NextToken                           => 'MyPaginationToken',    # OPTIONAL
      ReplicationConfigurationTemplateIDs => [
        'MyReplicationConfigurationTemplateID', ...    # min: 21, max: 21
      ],    # OPTIONAL
      );

    # Results:
    my $Items = $DescribeReplicationConfigurationTemplatesResponse->Items;
    my $NextToken =
      $DescribeReplicationConfigurationTemplatesResponse->NextToken;

# Returns a L<Paws::Drs::DescribeReplicationConfigurationTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/DescribeReplicationConfigurationTemplates>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of Replication Configuration Templates to retrieve.



=head2 NextToken => Str

The token of the next Replication Configuration Template to retrieve.



=head2 ReplicationConfigurationTemplateIDs => ArrayRef[Str|Undef]

The IDs of the Replication Configuration Templates to retrieve. An
empty list means all Replication Configuration Templates.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReplicationConfigurationTemplates in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

