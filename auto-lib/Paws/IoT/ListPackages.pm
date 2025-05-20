
package Paws::IoT::ListPackages;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPackages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListPackagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPackages - Arguments for method ListPackages on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPackages on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListPackages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPackages.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListPackagesResponse = $iot->ListPackages(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListPackagesResponse->NextToken;
    my $PackageSummaries = $ListPackagesResponse->PackageSummaries;

    # Returns a L<Paws::IoT::ListPackagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListPackages>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results returned at one time.



=head2 NextToken => Str

The token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPackages in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

