
package Paws::CustomerProfiles::ListEventTriggers;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEventTriggers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/event-triggers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::ListEventTriggersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListEventTriggers - Arguments for method ListEventTriggers on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEventTriggers on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method ListEventTriggers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEventTriggers.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $ListEventTriggersResponse = $profile->ListEventTriggers(
      DomainName => 'Myname',
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'Mytoken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListEventTriggersResponse->Items;
    my $NextToken = $ListEventTriggersResponse->NextToken;

    # Returns a L<Paws::CustomerProfiles::ListEventTriggersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/ListEventTriggers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The pagination token to use with ListEventTriggers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEventTriggers in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

