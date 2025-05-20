
package Paws::SecurityLake::ListSubscribers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscribers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/subscribers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::ListSubscribersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::ListSubscribers - Arguments for method ListSubscribers on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSubscribers on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method ListSubscribers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSubscribers.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $ListSubscribersResponse = $securitylake->ListSubscribers(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListSubscribersResponse->NextToken;
    my $Subscribers = $ListSubscribersResponse->Subscribers;

    # Returns a L<Paws::SecurityLake::ListSubscribersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/ListSubscribers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of accounts for which the configuration is
displayed.



=head2 NextToken => Str

If nextToken is returned, there are more results available. You can
repeat the call using the returned token to retrieve the next page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSubscribers in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

