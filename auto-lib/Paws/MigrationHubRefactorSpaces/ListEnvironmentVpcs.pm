
package Paws::MigrationHubRefactorSpaces::ListEnvironmentVpcs;
  use Moose;
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnvironmentVpcs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{EnvironmentIdentifier}/vpcs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubRefactorSpaces::ListEnvironmentVpcsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::ListEnvironmentVpcs - Arguments for method ListEnvironmentVpcs on L<Paws::MigrationHubRefactorSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnvironmentVpcs on the
L<AWS Migration Hub Refactor Spaces|Paws::MigrationHubRefactorSpaces> service. Use the attributes of this class
as arguments to method ListEnvironmentVpcs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnvironmentVpcs.

=head1 SYNOPSIS

    my $refactor-spaces = Paws->service('MigrationHubRefactorSpaces');
    my $ListEnvironmentVpcsResponse = $refactor -spaces->ListEnvironmentVpcs(
      EnvironmentIdentifier => 'MyEnvironmentId',
      MaxResults            => 1,                   # OPTIONAL
      NextToken             => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $EnvironmentVpcList = $ListEnvironmentVpcsResponse->EnvironmentVpcList;
    my $NextToken          = $ListEnvironmentVpcsResponse->NextToken;

# Returns a L<Paws::MigrationHubRefactorSpaces::ListEnvironmentVpcsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces/ListEnvironmentVpcs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnvironmentVpcs in L<Paws::MigrationHubRefactorSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

