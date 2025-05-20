
package Paws::Panorama::ListApplicationInstanceDependencies;
  use Moose;
  has ApplicationInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationInstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationInstanceDependencies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/application-instances/{ApplicationInstanceId}/package-dependencies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::ListApplicationInstanceDependenciesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListApplicationInstanceDependencies - Arguments for method ListApplicationInstanceDependencies on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationInstanceDependencies on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method ListApplicationInstanceDependencies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationInstanceDependencies.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $ListApplicationInstanceDependenciesResponse =
      $panorama->ListApplicationInstanceDependencies(
      ApplicationInstanceId => 'MyApplicationInstanceId',
      MaxResults            => 1,                           # OPTIONAL
      NextToken             => 'MyNextToken',               # OPTIONAL
      );

    # Results:
    my $NextToken = $ListApplicationInstanceDependenciesResponse->NextToken;
    my $PackageObjects =
      $ListApplicationInstanceDependenciesResponse->PackageObjects;

# Returns a L<Paws::Panorama::ListApplicationInstanceDependenciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/ListApplicationInstanceDependencies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationInstanceId => Str

The application instance's ID.



=head2 MaxResults => Int

The maximum number of application instance dependencies to return in
one page of results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationInstanceDependencies in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

