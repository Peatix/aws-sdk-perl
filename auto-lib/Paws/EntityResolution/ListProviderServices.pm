
package Paws::EntityResolution::ListProviderServices;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProviderName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'providerName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProviderServices');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/providerservices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::ListProviderServicesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::ListProviderServices - Arguments for method ListProviderServices on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProviderServices on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method ListProviderServices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProviderServices.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $ListProviderServicesOutput = $entityresolution->ListProviderServices(
      MaxResults   => 1,                 # OPTIONAL
      NextToken    => 'MyNextToken',     # OPTIONAL
      ProviderName => 'MyEntityName',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListProviderServicesOutput->NextToken;
    my $ProviderServiceSummaries =
      $ListProviderServicesOutput->ProviderServiceSummaries;

    # Returns a L<Paws::EntityResolution::ListProviderServicesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/ListProviderServices>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of objects returned per page.



=head2 NextToken => Str

The pagination token from the previous API call.



=head2 ProviderName => Str

The name of the provider. This name is typically the company name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProviderServices in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

