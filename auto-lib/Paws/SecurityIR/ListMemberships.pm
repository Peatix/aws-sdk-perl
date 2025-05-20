
package Paws::SecurityIR::ListMemberships;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMemberships');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/memberships');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::ListMembershipsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::ListMemberships - Arguments for method ListMemberships on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMemberships on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method ListMemberships.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMemberships.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $ListMembershipsResponse = $security -ir->ListMemberships(
      MaxResults => 1,                                            # OPTIONAL
      NextToken  => 'MyListMembershipsRequestNextTokenString',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListMembershipsResponse->Items;
    my $NextToken = $ListMembershipsResponse->NextToken;

    # Returns a L<Paws::SecurityIR::ListMembershipsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/ListMemberships>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Request element for ListMemberships to limit the number of responses.



=head2 NextToken => Str

Optional element.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMemberships in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

