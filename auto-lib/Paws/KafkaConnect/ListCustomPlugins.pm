
package Paws::KafkaConnect::ListCustomPlugins;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NamePrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namePrefix');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCustomPlugins');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/custom-plugins');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::ListCustomPluginsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::ListCustomPlugins - Arguments for method ListCustomPlugins on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCustomPlugins on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method ListCustomPlugins.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCustomPlugins.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $ListCustomPluginsResponse = $kafkaconnect->ListCustomPlugins(
      MaxResults => 1,               # OPTIONAL
      NamePrefix => 'My__string',    # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $CustomPlugins = $ListCustomPluginsResponse->CustomPlugins;
    my $NextToken     = $ListCustomPluginsResponse->NextToken;

    # Returns a L<Paws::KafkaConnect::ListCustomPluginsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/ListCustomPlugins>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of custom plugins to list in one response.



=head2 NamePrefix => Str

Lists custom plugin names that start with the specified text string.



=head2 NextToken => Str

If the response of a ListCustomPlugins operation is truncated, it will
include a NextToken. Send this NextToken in a subsequent request to
continue listing from where the previous operation left off.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCustomPlugins in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

