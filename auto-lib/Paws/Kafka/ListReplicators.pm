
package Paws::Kafka::ListReplicators;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ReplicatorNameFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'replicatorNameFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReplicators');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/replication/v1/replicators');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::ListReplicatorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListReplicators - Arguments for method ListReplicators on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReplicators on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method ListReplicators.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReplicators.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $ListReplicatorsResponse = $kafka->ListReplicators(
      MaxResults           => 1,               # OPTIONAL
      NextToken            => 'My__string',    # OPTIONAL
      ReplicatorNameFilter => 'My__string',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListReplicatorsResponse->NextToken;
    my $Replicators = $ListReplicatorsResponse->Replicators;

    # Returns a L<Paws::Kafka::ListReplicatorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/ListReplicators>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in the response. If there are
more results, the response includes a NextToken parameter.



=head2 NextToken => Str

If the response of ListReplicators is truncated, it returns a NextToken
in the response. This NextToken should be sent in the subsequent
request to ListReplicators.



=head2 ReplicatorNameFilter => Str

Returns replicators starting with given name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReplicators in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

